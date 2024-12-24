import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Profile',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.red.shade800,
        ),
        body: const ProfilePage(),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red.shade100, Colors.red.shade50],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/akmal.jpeg'),
            ),
            const SizedBox(height: 20),
            Text(
              'Riyadi Akmal Hafid Setiawan',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.red.shade800,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Teknik Informatika',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(height: 20),
            Divider(color: Colors.red.shade300, thickness: 1),
            const SizedBox(height: 10),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 8.0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(Icons.cake, color: Colors.red),
                      title: const Text('Tanggal Lahir'),
                      subtitle: const Text('31 Desember 2002'),
                    ),
                    Divider(color: Colors.grey.shade300, thickness: 1),
                    ListTile(
                      leading: const Icon(Icons.web, color: Colors.red),
                      title: const Text('Website'),
                      subtitle: const Text('akmal.com'),
                      onTap: () {},
                    ),
                    Divider(color: Colors.grey.shade300, thickness: 1),
                    ListTile(
                      leading: const Icon(Icons.email, color: Colors.red),
                      title: const Text('Email'),
                      subtitle: const Text('akmalganteng@gmail.com'),
                    ),
                    Divider(color: Colors.grey.shade300, thickness: 1),
                    ListTile(
                      leading: const Icon(Icons.location_on, color: Colors.red),
                      title: const Text('Alamat'),
                      subtitle: const Text('Bogor'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 0),
            _buildInformationCard(context, 'Education', [
              _buildListTile(Icons.school, 'Universitas', 'Universitas Sains Al-Quran'),
              _buildListTile(Icons.book, 'Jurusan', 'Teknik Informatika'),
            ]),
            const SizedBox(height: 20),
            _buildInformationCard(context, 'Work Experience', [
              _buildListTile(Icons.work, 'Work Practice', 'Web System Information'),
              _buildListTile(Icons.code, 'Freelance', 'Web Development'),
            ]),
            const SizedBox(height: 20),
            _buildInformationCard(context, 'Hobbies', [
              _buildListTile(Icons.music_note, 'Musik', 'Drunk text - Henry Moodie'),
              _buildListTile(Icons.directions_bike, 'Hobi', 'Main Game'),
              _buildListTile(Icons.movie, 'Film', 'The Hobbit'),
            ]),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.call, color: Colors.white),
                  label: const Text(
                    'Call Me',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade800,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.message, color: Colors.white),
                  label: const Text(
                    'Message',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade600,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 15,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.facebook),
                  onPressed: () {},
                  color: Colors.red.shade700,
                  tooltip: 'Facebook',
                  iconSize: 30,
                ),
                IconButton(
                  icon: const Icon(Icons.link),
                  onPressed: () {},
                  color: Colors.red.shade800,
                  tooltip: 'LinkedIn',
                  iconSize: 30,
                ),
                IconButton(
                  icon: const Icon(Icons.code),
                  onPressed: () {},
                  color: Colors.black,
                  tooltip: 'GitHub',
                  iconSize: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Card _buildInformationCard(BuildContext context, String title, List<Widget> items) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 8.0,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.red.shade800,
              ),
            ),
            const SizedBox(height: 10),
            ...items,
          ],
        ),
      ),
    );
  }

  ListTile _buildListTile(IconData icon, String title, String subtitle) {
    return ListTile(
      leading: Icon(icon, color: Colors.red),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
