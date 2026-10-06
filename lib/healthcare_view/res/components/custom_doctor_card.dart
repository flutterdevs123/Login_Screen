import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorCard extends StatelessWidget {
  final String doctorName;
  final String specialization;
  final String rating;
  final String experience;
  final String qualification;
  final String fee;
  final String imageUrl;
  final VoidCallback onBookNow;
  final VoidCallback onTap;

  const DoctorCard({
    Key? key,
    this.doctorName = "Dr. Ali Raza",
    this.specialization = "Cardiologist",
    this.rating = "4.8",
    this.experience = "10+ Years Exp.",
    this.qualification = "MBBS, FCPS",
    this.fee = "Rs. 1500",
    this.imageUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQqpZtnSObMs9DHmJbfxJhylBwXcL43SjzA2zP7jpr3A&s=10",
    required this.onBookNow,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Doctor Image
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 12),

                // Details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            doctorName,
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF1E293B),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 16,
                            color: Color(0xFF2F80ED),
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                      Text(
                        specialization,
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF64748B),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),

                      // Rating, Experience, Qualification Row
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 6,
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 16),
                          Text(
                            rating,
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF1E293B),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Text("•", style: TextStyle(color: Colors.grey)),
                          Text(
                            experience,
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF64748B),
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Text("•", style: TextStyle(color: Colors.grey)),
                          Text(
                            qualification,
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF64748B),
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Divider(height: 1, color: Color(0xFFF1F5F9)),
            const SizedBox(height: 10),

            // Bottom Row (Price & Book Now Button)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  fee,
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF2F80ED),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 38,
                  child: ElevatedButton(
                    onPressed: onBookNow,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFEBF3FC),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      "Book Now",
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF2F80ED),
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}