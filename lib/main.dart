import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 
void main() { 
  runApp(MyPortfolioApp()); 
} 
 
class MyPortfolioApp extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      title: "Portfolio", 
      initialRoute: '/',
      theme: ThemeData(textTheme: GoogleFonts.lexendTextTheme()),
      routes: { 
        '/': (context) => HomePage(), 
        '/about': (context) => AboutPage(), 
        '/projects': (context) => ProjectsPage(), 
      }, 
    ); 
  } 
} 
 
//  Home Page 
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(title: Text("My Portfolio")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('assets/profile.png'), // Add image in assets
            ),
            SizedBox(height: 10),
            Text(
              "Hello, it's me Kruthi!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text("Flutter Developer", style: TextStyle(fontSize: 16, color: Colors.white)),
            SizedBox(height: 20),

            // Gradient Button: About Me
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.deepPurpleAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/about'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text("About Me", style: TextStyle(color: Colors.white)),
              ),
            ),

            SizedBox(height: 10),

            // Gradient Button: Projects
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.deepPurpleAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/projects'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text("Projects", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//About Page
class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(title: Text("About Me")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "I'm a passionate Flutter developer with a love for building beautiful and functional apps.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Certifications", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white), textAlign: TextAlign.center,),
                          SizedBox(height: 8),
                          Text("- Google AI Essentials", style: TextStyle(color: Colors.white)),
                          Text("- Figma UI/UX Design Essentials: Udemy", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Skills", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white), textAlign: TextAlign.center,),
                          SizedBox(height: 8),
                          Text("- Flutter & Dart", style: TextStyle(color: Colors.white)),
                          Text("- UI/UX Design", style: TextStyle(color: Colors.white)),
                          Text("- Figma", style: TextStyle(color: Colors.white)),
                          Text("- Blender", style: TextStyle(color: Colors.white)),
                          Text("- Qiskit", style: TextStyle(color: Colors.white)),
                          Text("- C & R Programming", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Extracurriculars", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                          SizedBox(height: 8),
                          Text("• Art Club Lead: ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                          Text("  • Leading a team of 15+ students.", style: TextStyle(color: Colors.white)),
                          Text("  • Produced decorative elements & handmade crafts for campus", style: TextStyle(color: Colors.white)),
                          Text("    events with peers.", style: TextStyle(color: Colors.white)),
                          Text("  • Events: ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                          Text("    Freshers | Orientation | Cultural Celebrations", style: TextStyle(color: Colors.white)),
                          Text("  • Skills Showcased: ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                          Text("    Team Co-ordination | Project Management |", style: TextStyle(color: Colors.white)),
                          Text("    Budget Management | Creative Direction |", style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              Text(
                "Each section highlights a different part of my journey.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),

              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Back to Home"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 
// Projects Page 
class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(title: Text("My Projects")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Quantum Computing:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                          SizedBox(height: 8),
                          Text("  - 6 Months Case Study Under CRRao AIMSCS", style: TextStyle(color: Colors.white)),
                          Text("  - Team: 11 Members", style: TextStyle(color: Colors.white)),
                          Text("  - Implemented: ", style: TextStyle(color: Colors.white)),
                          Text("    - Quantum addition", style: TextStyle(color: Colors.white)),
                          Text("    - RC4 Using Quantum Gates", style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("FrontEnd Development: ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                          SizedBox(height: 8),
                          Text("  - Landing Page of a demo website", style: TextStyle(color: Colors.white)),
                          Text("  - Implemented Using: ", style: TextStyle(color: Colors.white)),
                          Text("    - HTML | CSS ", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              Text(
                "These projects showcase my design and development skills across platforms.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),

              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Back to Home") ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 
 
