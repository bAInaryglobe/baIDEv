import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ... (Rest of your state class remains the same)

  bool _isSidebarOpen = false;
  bool _isBottomBarOpen = false;
  int _selectedBottomTabIndex = 0; // Start with the first tab selected


  void _handleBottomTabSelection(int index) {
    setState(() {
      _selectedBottomTabIndex = index;
    });
  }

  void _toggleSidebar() {
    setState(() {
      _isSidebarOpen = !_isSidebarOpen;
    });
  }

  void _toggleBottomBar() {
    setState(() {
      _isBottomBarOpen = !_isBottomBarOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('bAIde'),
        leading: IconButton(
          icon: _isSidebarOpen ? const Icon(Icons.arrow_back) : const Icon(Icons.menu),
          onPressed: _toggleSidebar,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),





      drawer: _isSidebarOpen ? _buildSideBar() : null,
      body: Row(
        children: [
          _buildSideBar(),
          Expanded(
            child: Column(
              children: [
                _buildTopBar(),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: _buildDragDropPane(),
                      ),
                      const VerticalDivider(
                        thickness: 1,
                      ),
                      Expanded(
                        flex: 1,
                        child: _buildCodePane(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _isBottomBarOpen ? _buildBottomBar() : null,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),






      // ... (Rest of Scaffold structure remains the same)
    );
  }



  Widget _buildDragDropPane() {
    return Container(
      color: Colors.blueGrey,
      child: const Center(
        child: Text(
          'Drag and Drop UI Area',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }




  Widget _buildCodePane() {
    return Container(
      color: Colors.blueGrey.shade300, // A slightly different color
      child: const Center(
        child: Text(
          'Code Editor Area',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }




  Widget _buildBottomBar() {
    return BottomNavigationBar(
      currentIndex: _selectedBottomTabIndex, // Track currently selected view
      onTap: _handleBottomTabSelection,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.terminal), label: 'Terminal'),
        BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: 'Run'),
        BottomNavigationBarItem(icon: Icon(Icons.bug_report), label: 'Debug'),
        // ... Add more tabs if needed
      ],
    );
  }



  Widget _buildSideBar() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // ... (DrawerHeader remains the same)
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: const Text('bAIde'),
          ),
          ListTile(
            leading: const Icon(Icons.folder_open), // Changed from 'project'
            title: const Text('Projects'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.folder),
            title: const Text('Files'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.play_arrow), // Replaced 'run'
            title: const Text('Run'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.bug_report), // Replaced 'debug'
            title: const Text('Debug'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildTopBar() {
    return Row(
      children: [
        // ... (Icons here remain unchanged)




        IconButton(
          icon: const Icon(Icons.file_open),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.save),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.undo),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.redo),
          onPressed: () {},
        ),
        const Expanded(child: SizedBox()),
        IconButton(
          icon: const Icon(Icons.terminal),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.fullscreen),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(_isBottomBarOpen ? Icons.arrow_upward
              : Icons.arrow_downward),
          onPressed: _toggleBottomBar,
        ),





      ],
    );
  }
}































//
//
//
//
//
//
//
// import 'package:flutter/material.dart';
// // import 'package:flutter_icons/flutter_icons.dart';
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   bool _isSidebarOpen = false;
//   bool _isBottomBarOpen = false;
//
//   void _toggleSidebar() {
//     setState(() {
//       _isSidebarOpen = !_isSidebarOpen;
//     });
//   }
//
//   void _toggleBottomBar() {
//     setState(() {
//       _isBottomBarOpen = !_isBottomBarOpen;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter IDE'),
//         leading: IconButton(
//           icon: _isSidebarOpen ? Icon(Icons.arrow_back) : Icon(Icons.menu),
//           onPressed: _toggleSidebar,
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: Icon(Icons.settings),
//             onPressed: () {},
//           ),
//         ],
//       ),
//
//       drawer: _isSidebarOpen ? _buildSideBar() : null,
//       body: Row(
//         children: [
//           _buildSideBar(),
//           Expanded(
//             child: Column(
//               children: [
//                 _buildTopBar(),
//                 Expanded(
//                   child: Row(
//                     children: [
//                       Expanded(
//                         flex: 2,
//                         child: _buildDragDropPane(),
//                       ),
//                       VerticalDivider(
//                         thickness: 1,
//                       ),
//                       Expanded(
//                         flex: 1,
//                         child: _buildCodePane(),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: _isBottomBarOpen ? _buildBottomBar() : null,
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {},
//       ),
//
//
//
//
//
//     );
//   }
//
//   Widget _buildSideBar() {
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           DrawerHeader(
//             child: Text('Flutter IDE'),
//             decoration: BoxDecoration(
//               color: Theme.of(context).primaryColor,
//             ),
//           ),
//           ListTile(
//             leading: Icon(Icons.project),
//             title: Text('Projects'),
//             onTap: () {},
//           ),
//           ListTile(
//             leading: Icon(Icons.folder),
//             title: Text('Files'),
//             onTap: () {},
//           ),
//           ListTile(
//             leading: Icon(MaterialCommunityIcons.run),
//             title: Text('Run'),
//             onTap: () {},
//           ),
//           ListTile(
//             leading: Icon(Icons.debug),
//             title: Text('Debug'),
//             onTap: () {},
//           ),
//           ListTile(
//             leading: Icon(Icons.settings),
//             title: Text('Settings'),
//             onTap: () {},
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildTopBar() {
//     return Row(
//
//
//
//         children: [
//
//
//
//
//     IconButton(
//     icon: Icon(Icons.file_open),
//     onPressed: () {},
//     ),
//     IconButton(
//     icon: Icon(Icons.save),
//     onPressed: () {},
//     ),
//     IconButton(
//     icon: Icon(Icons.undo),
//     onPressed: () {},
//     ),
//     IconButton(
//     icon: Icon(Icons.redo),
//     onPressed: () {},
//     ),
//     Expanded(child: SizedBox()),
//     IconButton(
//     icon: Icon(Icons.terminal),
//     onPressed: () {},
//     ),
//     IconButton(
//     icon: Icon(Icons.fullscreen),
//     onPressed: () {},
//     ),
//     IconButton(
//     icon: Icon(_isBottomBarOpen ? Icons.arrow_upward
//         : Icons.arrow_downward),
//     onPressed: _toggleBottomBar,
//     ),
//
//
//
//
//     ],
//
//
//
//     );