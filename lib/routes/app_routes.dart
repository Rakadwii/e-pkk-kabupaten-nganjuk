import 'package:e_pkk_nganjuk/features/home/presentation/pages/akun_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/home_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/informasi_akun_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/kader_pokja3_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/kader_pokja4_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/kelestarian_lingkungan1_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/kelestarian_lingkungan2_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/kesehatan_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/pangan1_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/pangan2_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/pendidikan_keterampilan1_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/pendidikan_keterampilan2_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/pendidikan_keterampilan3_sreen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/pendidikan_keterampilan4_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/pengembangan_kehidupan_berkoprasi1_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/pengembangan_kehidupan_berkoprasi2_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/pengumuman_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/perencanaan_sehat_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/perumahan_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/review_laporan_kelestarian_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/review_laporan_pangan_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/review_laporan_pendidikanscreen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/riwayat_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/sandang_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/tentang_kami_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/ubah_sandi_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/upload_galeri_screen.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/pages/upload_laporan.dart';
import 'package:e_pkk_nganjuk/get/binding/welcome_binding.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../features/auth/presentation/pages/auth_screen.dart';
import '../features/auth/presentation/pages/pick_role_screen.dart';
import '../features/auth/presentation/pages/register_screen.dart';
import '../features/auth/presentation/pages/verification_screen.dart';
import '../features/splash_screen/splash_screen.dart';
import '../features/welcome/welcome_screen.dart';
import '../get/binding/auth_binding.dart';

class AppRoutes {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.WELCOME,
      page: () => WelcomeScreen(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: Routes.AUTH_LOGIN,
      page: () => AuthScreen(),
      binding: AuthBinding(),
    ),
    // GetPage(
    //   name: Routes.RESET_PASSWORD,
    //   page: () => ForgetPasswordScreen(),
    // ),
    GetPage(name: Routes.REGISTER, page: () => RegisterScreen()),
    GetPage(name: Routes.PICK_ROLE, page: () => PickRoleScreen()),
    GetPage(name: Routes.VERIFICATION, page: () => VerificationScreen()),
    GetPage(name: Routes.HOME, page: () => HomeScreen()),
    GetPage(name: Routes.UPLOAD_LAPORAN, page: () => UploadLaporan()),
    GetPage(
        name: Routes.PENDIDIKAN1, page: () => PendidikanKetrampilan1Screen()),
    GetPage(
        name: Routes.PENDIDIKAN2, page: () => PendidikanKetrampilan2Screen()),
    GetPage(
        name: Routes.PENDIDIKAN3, page: () => PendidikanKetrampilan3Screen()),
    GetPage(
        name: Routes.PENDIDIKAN4, page: () => PendidikanKetrampilan4Screen()),
    GetPage(
        name: Routes.PENGEMBANGAN1, page: () => KehidupanBerkoperasi1Screen()),
    GetPage(
        name: Routes.PENGEMBANGAN2, page: () => KehidupanBerkoperasi2Screen()),

    GetPage(name: Routes.PANGAN1, page: () => Pangan1Screen()),
    GetPage(name: Routes.PANGAN2, page: () => Pangan2Screen()),
    GetPage(name: Routes.SANDANG, page: () => SandangScreen()),
    GetPage(name: Routes.PERUMAHAN, page: () => PerumahanScreen()),
    GetPage(name: Routes.KADER_POKJA4, page: () => KaderPokjaIVScreen()),
    GetPage(name: Routes.KESEHATAN, page: () => KesehatanScreen()),
    GetPage(
        name: Routes.KELESTARIAN1, page: () => KelestarianLingkungan1Screen()),
    GetPage(
        name: Routes.KELESTARIAN2, page: () => KelestarianLingkungan2Screen()),
    GetPage(
        name: Routes.PERENCANAAN_SEHAT, page: () => PerencanaanSehatScreen()),
    GetPage(name: Routes.KADER_POKJA3, page: () => KaderPokja3Screen()),
    GetPage(name: Routes.RIWAYAT, page: () => RiwayatScreen()),
    GetPage(name: Routes.PENGUMUMAN, page: () => PengumumanScreen()),
    GetPage(name: Routes.AKUN, page: () => AkunScreen()),
    GetPage(name: Routes.INFO_AKUN, page: () => InformasiAkunScreen()),
    GetPage(name: Routes.UBAH_SANDI, page: () => UbahKataSandiScreen()),
    GetPage(name: Routes.UPLOAD_GALERI, page: () => UploadGaleriScreen()),
    GetPage(
      name: Routes.REVIEW_PANGAN,
      page: () => ReviewLaporanPangannScreen(),
    ),
    GetPage(
      name: Routes.REVIEW_PENDIDIKAN,
      page: () => ReviewLaporanPendidikanScreen(),
    ),
    GetPage(
      name: Routes.REVIEW_KELESTARIAN,
      page: () => ReviewLaporanKelestarianScreen(),
    ),
    GetPage(
      name: Routes.TENTANG,
      page: () => TentangKamiScreen(),
    )

    // GetPage(
    //   name: Routes.KADER_POKJA1,
    //   page: () => KaderPokja1Screen(),
    //   binding: UploadReportBinging(),
    // ),
  ];
}

class Routes {
  static const SPLASH = '/splash';
  static const WELCOME = '/welcome';
  static const AUTH_LOGIN = '/auth_login';
  static const RESET_PASSWORD = '/reset_password';
  static const REGISTER = '/register';
  static const PICK_ROLE = '/pick_role';
  static const VERIFICATION = '/verification';
  static const HOME = '/home';
  static const UPLOAD_LAPORAN = '/upload_laporan';
  static const KADER_POKJA1 = '/kader_pokja1';
  static const GOTONG_ROYONG = '/gotong_royong';
  static const PENGHAYATAN = '/penghayatan';
  static const PENDIDIKAN1 = '/pendidikan1';
  static const PENDIDIKAN2 = '/pendidikan2';
  static const PENDIDIKAN3 = '/pendidikan3';
  static const PENDIDIKAN4 = '/pendidikan4';
  static const REVIEW_PENDIDIKAN = '/review_pendidikan';
  static const PENGEMBANGAN1 = '/pengembangan1';
  static const PENGEMBANGAN2 = '/pengembangan2';
  static const KADER_POKJA3 = '/kader_pokja3';
  static const PANGAN1 = '/pangan1';
  static const PANGAN2 = '/pangan2';
  static const REVIEW_PANGAN = '/review_pangan';
  static const SANDANG = '/sandang';
  static const PERUMAHAN = '/perumahan';
  static const KADER_POKJA4 = '/kader_pokja4';
  static const KESEHATAN = '/kesehatan';
  static const KELESTARIAN1 = '/kelestarian1';
  static const KELESTARIAN2 = '/kelestarian2';
  static const PERENCANAAN_SEHAT = '/perencanaan_sehat';
  static const PENGUMUMAN = '/pengumuman';
  static const AKUN = '/akun';
  static const RIWAYAT = '/riwayat';
  static const TENTANG = '/tentang';
  static const UBAH_SANDI = '/ubah_sandi';
  static const INFO_AKUN = '/info_akun';
  static const UPLOAD_GALERI = '/upload_galeri';
  static const REVIEW_KELESTARIAN = '/review_kelestarian';
}
