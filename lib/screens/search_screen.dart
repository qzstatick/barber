import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String? selectedCity = 'Berlin';
  String? selectedRadius = '5 км';
  bool isBarberSelected = true;
  bool isCoworkingSelected = true;
  RangeValues priceRange = const RangeValues(0, 100);

  final List<String> cities = ['Berlin', 'Munich', 'Hamburg', 'Cologne'];
  final List<String> radiusOptions = ['1 км', '5 км', '10 км'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Фильтры'),
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Город
          Text(
            'Город',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey[200]!),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: DropdownButton<String>(
                value: selectedCity,
                isExpanded: true,
                underline: const SizedBox(),
                items: cities.map((String city) {
                  return DropdownMenuItem<String>(
                    value: city,
                    child: Text(city),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedCity = newValue;
                  });
                },
              ),
            ),
          ),
          const SizedBox(height: 28),

          // Радиус
          Text(
            'Радиус',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 12),
          Column(
            children: radiusOptions.map((radius) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: RadioListTile<String>(
                  value: radius,
                  groupValue: selectedRadius,
                  onChanged: (String? value) {
                    setState(() {
                      selectedRadius = value;
                    });
                  },
                  title: Text(radius),
                  contentPadding: EdgeInsets.zero,
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 28),

          // Тип
          Text(
            'Тип',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 12),
          CheckboxListTile(
            value: isBarberSelected,
            onChanged: (bool? value) {
              setState(() {
                isBarberSelected = value ?? false;
              });
            },
            title: const Text('Барбер'),
            contentPadding: EdgeInsets.zero,
          ),
          CheckboxListTile(
            value: isCoworkingSelected,
            onChanged: (bool? value) {
              setState(() {
                isCoworkingSelected = value ?? false;
              });
            },
            title: const Text('Коворкинг'),
            contentPadding: EdgeInsets.zero,
          ),
          const SizedBox(height: 28),

          // Цена
          Text(
            'Цена',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 12),
          Column(
            children: [
              RangeSlider(
                values: priceRange,
                min: 0,
                max: 200,
                divisions: 20,
                onChanged: (RangeValues values) {
                  setState(() {
                    priceRange = values;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('€ ${priceRange.start.toStringAsFixed(0)}'),
                    Text('€ ${priceRange.end.toStringAsFixed(0)}'),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),

          // Кнопки действий
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      selectedCity = 'Berlin';
                      selectedRadius = '5 км';
                      isBarberSelected = true;
                      isCoworkingSelected = true;
                      priceRange = const RangeValues(0, 100);
                    });
                  },
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('Сбросить'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // Применить фильтры
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Фильтры применены'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('Применить'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
