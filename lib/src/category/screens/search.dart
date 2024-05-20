import 'package:flutter/material.dart';

class Product {
  final String name;
  final String imageUrl;
  final double price;

  Product({required this.name, required this.imageUrl, required this.price});
}

class SearchTab extends StatefulWidget {
  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  TextEditingController _searchController = TextEditingController();
  List<Product> _searchResults = [];
  bool _showClearButton = false;

  @override
  void initState() {
    super.initState();
    _addInitialSearchResults();
  }

  void _addInitialSearchResults() {
    _searchResults.addAll([
      Product(
        name: 'Burger',
        imageUrl: 'https://rb.gy/hg4wxh',
        price: 79.99,
      ),
      Product(
        name: 'Veggie burger',
        imageUrl: 'https://rb.gy/hg4wxh',
        price: 89.99,
      ),
      Product(
        name: 'Beef burger',
        imageUrl: 'https://rb.gy/hg4wxh',
        price: 29.99,
      ),
      Product(
        name: 'Potato burger',
        imageUrl: 'https://rb.gy/hg4wxh',
        price: 99.99,
      ),
      Product(
        name: 'Criny burger',
        imageUrl: 'https://rb.gy/hg4wxh',
        price: 22.99,
      ),
      Product(
        name: 'Ham burger',
        imageUrl: 'https://rb.gy/hg4wxh',
        price: 27.99,
      ),
      Product(
        name: 'Alfa burger',
        imageUrl: 'https://rb.gy/hg4wxh',
        price: 29.99,
      ),
      Product(
        name: 'Crispy burger',
        imageUrl: 'https://rb.gy/hg4wxh',
        price: 26.99,
      ),
    ]);
  }

  void _onSearch() {
    String query = _searchController.text;

    setState(() {
      _searchResults = List.generate(
        10,
        (index) => Product(
          name: 'Burger',
          imageUrl: 'https://rb.gy/hg4wxh',
          price: (index + 1) * 5.0,
        ),
      );
      _showClearButton = true;
    });
  }

  void _clearSearch() {
    setState(() {
      _searchController.clear();
      _searchResults.clear();
      _addInitialSearchResults();
      _showClearButton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: _onSearch,
                      ),
                    ),
                    onChanged: (_) {
                      setState(() {
                        _showClearButton = _searchController.text.isNotEmpty;
                      });
                    },
                    onSubmitted: (_) => _onSearch(),
                  ),
                ),
                if (_showClearButton)
                  IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: _clearSearch,
                  ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _searchResults.length,
              itemBuilder: (context, index) {
                return _buildProductItem(_searchResults[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductItem(Product product) {
    return Card(
      child: ListTile(
        leading: Image.network(
          product.imageUrl,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        title: Text(product.name),
        subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
        onTap: () {},
      ),
    );
  }
}
