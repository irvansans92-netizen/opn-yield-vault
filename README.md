# OPN Yield Vault

Smart contract berbasis saham (shares-based) untuk vault deposit dan yield di OPN Testnet.

## Deskripsi
Proyek ini mengimplementasikan mekanisme vault transparan di mana pengguna dapat mendepositkan aset dan mendapatkan imbal hasil (yield). Setiap interaksi tercatat secara on-chain dan dapat diverifikasi oleh siapa saja.

## Kontrak
- **Alamat Kontrak:** `0x3DcD261Df4e5905b3731A17281456AD6781F161f`

## Cara Testing (Tanpa Coding)
Untuk menguji kontrak ini, kamu bisa menggunakan [Remix IDE](https://remix.ethereum.org/):
1. Copy kode dari file `YieldVault.sol` di repositori ini ke Remix IDE.
2. Compile kode tersebut.
3. Di tab "Deploy & Run", pilih **"Injected Provider - MetaMask"**.
4. Masukkan alamat kontrak di atas pada bagian **"At Address"**.
5. Sekarang kamu bisa langsung menekan tombol `deposit`, `withdraw`, atau `addYield` langsung melalui browser!

## Bukti Transaksi
- **Deposit Tx:** `0xbc9d43c105183a8b4ae2c56bd3aec9a20496c9e785b3f51a77aa29f07fd84a64`
- **Add Yield Tx:** `0x29c539ea0c62762c8d7a98e54aeb5de3bca5ee5853df35a407f280ae9dadfdca`
