import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

///
class ProfilePage extends StatelessWidget {
  ///
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Profile',
            style: TextStyle(
              color: Color(0xFF007DD1),
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(31),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment(0, 0.50),
                end: Alignment(1, 0.50),
                colors: [Color(0xFF007DD1), Color(0xFF003F6B)],
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Container(
                  width: 68,
                  height: 68,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    shape: BoxShape.circle,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      'https://media.licdn.com/dms/image/v2/D4D03AQGsvWpE2W_dMw/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1723027703094?e=1756944000&v=beta&t=i2PnLd1iCTEmqOcfjgqvV93Kc0jJ7rP0H4Oe94mRiXc',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: const Text(
                        'NGOGA Adolphe',
                        style: TextStyle(
                          color: Color(0xFFE6F2FA),
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Status:',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: ' ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: 'Active',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 1.60,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 104),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFAFAFAF)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const ListTile(
              leading: Icon(Icons.person_outline, color: Colors.black),
              title: Text(
                'Personal Information',
                style: TextStyle(
                  color: Color(0xFF191919),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
              trailing: Icon(
                Icons.chevron_right_sharp,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          const SizedBox(height: 17),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFAFAFAF)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const ListTile(
              leading: Icon(Icons.security_rounded, color: Colors.black),
              title: Text(
                'Security',
                style: TextStyle(
                  color: Color(0xFF191919),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
              trailing: Icon(
                Icons.chevron_right_sharp,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          const SizedBox(height: 17),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFAFAFAF)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const ListTile(
              leading: Icon(Icons.notifications_none, color: Colors.black),
              title: Text(
                'Notifications',
                style: TextStyle(
                  color: Color(0xFF191919),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
              trailing: Icon(
                Icons.chevron_right_sharp,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          const SizedBox(height: 17),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFAFAFAF)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListTile(
              onTap: () => context.goNamed('auth'),
              leading: const Icon(Icons.logout_outlined, color: Colors.black),
              title: const Text(
                'Log Out',
                style: TextStyle(
                  color: Color(0xFF191919),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
              trailing: const Icon(
                Icons.chevron_right_sharp,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
