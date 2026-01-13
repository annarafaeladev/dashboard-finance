import 'package:flutter/material.dart';

class CardResumeCreditCard extends StatelessWidget {
  final double limiteTotal;
  final double utilizado;
  final double disponivel;

  const CardResumeCreditCard({
    super.key,
    required this.limiteTotal,
    required this.utilizado,
    required this.disponivel,
  });

  double get percentualUso =>
      limiteTotal == 0 ? 0 : (utilizado / limiteTotal).clamp(0, 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF7B4DFF),
            Color(0xFF2ED1C3),
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
              Icon(Icons.credit_card, color: Colors.white),
              SizedBox(width: 8),
              Text(
                "Resumo dos Cartões",
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
              _info("Limite Total", limiteTotal),
              _info("Utilizado", utilizado),
              _info("Disponível", disponivel),
            ],
          ),

          const SizedBox(height: 16),

          // Uso do limite
          Text(
            "Uso do limite ${(percentualUso * 100).toStringAsFixed(1)}%",
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
