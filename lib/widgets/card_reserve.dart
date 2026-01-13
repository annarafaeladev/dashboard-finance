import 'package:flutter/material.dart';

class CardReserve extends StatelessWidget {
  final String title;
  final String label;
  final double totalAcumulado;
  final double metaTotal;

  const CardReserve({super.key, required this.title, required this.label, required this.totalAcumulado, required this.metaTotal});


  double get percentualUso =>
      totalAcumulado == 0 ? 0 : (totalAcumulado / metaTotal).clamp(0, 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF3D82F8),
             Color(0xFF6673F8),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: const [
              Icon(Icons.shield_outlined, color: Colors.white),
              SizedBox(width: 8),
              Text(
                "Reserva de Emergência",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // Valores
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _info("Total Acumulado", totalAcumulado),
              _info("Meta", metaTotal)
            ],
          ),

          const SizedBox(height: 16),

          // Uso do limite
          Text(
            "Progresso ${(percentualUso * 100).toStringAsFixed(1)}%",
            style: const TextStyle(color: Colors.white70, fontSize: 12),
          ),

          const SizedBox(height: 8),

          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: percentualUso,
              minHeight: 10,
              backgroundColor: Colors.white.withOpacity(0.25),
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _info(String label, double value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(color: Colors.white70, fontSize: 12),
        ),
        const SizedBox(height: 4),
        Text(
          "R\$ ${value.toStringAsFixed(2)}",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
