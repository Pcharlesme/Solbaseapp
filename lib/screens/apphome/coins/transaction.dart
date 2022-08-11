import 'dart:typed_data';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:solana/dto.dart';
import 'package:solana/encoder.dart';
import 'package:solana_wallets_flutter/solana_wallets_flutter.dart';
import 'package:solana/solana.dart';

const String _myAccount = '8wfo3nk8BVbu38pCJGupTWR4XXFagczaFbrMh6Pev1P5';
const String _mainnet = 'https://api.mainnet-beta.solana.com';

/// We use the [solana] package to create and send the transaction,
/// and the [solana_wallets_flutter] to let the user sign the transaction.
Future<void> _tansferExample(
    String senderPubkey, BaseSignerWalletAdapter wallet) async {
  // The code until the empty line is related to the solana package.
  RpcClient client = RpcClient(_mainnet);
  // Create the instruction, compile it, and convert it to bytes.
  Ed25519HDPublicKey sender = Ed25519HDPublicKey.fromBase58(senderPubkey);
  SystemInstruction instruction = SystemInstruction.transfer(
      fundingAccount: sender,
      recipientAccount: Ed25519HDPublicKey.fromBase58(_myAccount),
      lamports: 100000000);
  Message message = Message.only(instruction);
  RecentBlockhash blockhash = await client.getRecentBlockhash();
  CompiledMessage compiledMessage =
      message.compile(recentBlockhash: blockhash.blockhash, feePayer: sender);
  Uint8List bytes = Uint8List.fromList(List<int>.from(compiledMessage.data));

  // Since we now got the bytes of the message, we enter the domain of
  // solana_wallets_flutter.
  // Use the bytes to create a JavaScript message and then transaction.
  ProxyMessage proxyMessage = ProxyMessage.from(bytes);
  ProxyTransaction proxyTransaction = ProxyTransaction.populate(proxyMessage);
  // Use the wallet to sign the transaction, the user will now be promted to
  // accept the transaction
  ProxyTransaction signedTransaction =
      await wallet.signTransaction(proxyTransaction);
  Uint8List signedBytes = signedTransaction.serialize();

  // Now go back to the solana package.
  String encodedTransaction = base64.encode(signedBytes);
  await client.sendTransaction(encodedTransaction);
}

class TransactionExample extends StatelessWidget {
  final BaseWalletAdapter wallet;
  const TransactionExample({Key? key, required this.wallet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? pubkey = wallet.publicKey;
    bool canRunExample = wallet is BaseSignerWalletAdapter &&
        pubkey != null &&
        wallet.walletState == WalletState.connected;
    String buttonText = wallet is BaseSignerWalletAdapter
        ? (wallet.walletState == WalletState.connected
            ? (pubkey != null
                ? 'Tansaction Example*'
                : 'Wallet does not share its public key with flutter,\r\nso we can not do this example...')
            : 'Wallet not connected!')
        : 'Wallet is not a BaseSignerWalletAdapter\r\nso it can not sign transactions!';
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
            onPressed: canRunExample
                ? () {
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) {
                          return const SimpleDialog(
                              title: Text('Executing transaction...'),
                              children: [
                                Center(
                                  child: CircularProgressIndicator(),
                                )
                              ]);
                        });
                    _tansferExample(pubkey, wallet as BaseSignerWalletAdapter)
                        .then((_) => Navigator.of(context).pop())
                        .catchError((Object error, StackTrace trace) {
                      print(error);
                      print(trace);
                      Navigator.of(context).pop();
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Transaction failed!'),
                              content: Text('$error\r\n$trace'),
                              actions: [
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Ok'),
                                )
                              ],
                            );
                          });
                    });
                  }
                : null,
            child: Text(buttonText)),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: canRunExample
              ? const Text(
                  '*WARNING: If you approve this transaction in your wallet you are executing a REAL solana transaction (to donate me 0.1SOL). Don\'t approve or use a wallet without funds on it if you don\'t want to!')
              : null,
        )
      ],
    );
  }
}
