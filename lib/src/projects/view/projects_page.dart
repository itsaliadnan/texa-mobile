import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/src/shared/widgets/gradinet_container.dart';
import 'package:texa1_app/translation/translations.g.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.t.projects.list,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
              Text(
                context.t.projects.title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
              ),

              const SizedBox(height: 24),
              ProjectButton(title: context.t.projects.bexy),
              const SizedBox(height: 16),
              ProjectButton(title: context.t.projects.texa),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectButton extends StatelessWidget {
  const ProjectButton({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push('/projects/details');
      },
      child: Container(
        decoration: BoxDecoration(
          color: context.colorScheme.primary,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(48),
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 24, vertical: 16),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: context.colorScheme.onPrimary,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    spacing: 8,
                    children: [
                      Text(
                        "100,000 IQD",
                        style: TextStyle(color: context.colorScheme.onPrimary),
                      ),
                      Icon(
                        Icons.visibility_off,
                        color: context.colorScheme.onPrimary,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 16),

              const Spacer(),

              Icon(
                Icons.arrow_forward_ios,
                color: context.colorScheme.onPrimary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
