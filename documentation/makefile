requirements:
	pandoc -s build_tools/format.yaml requirements.md  \
	-o ./out/requirements.pdf

architecture:
	pandoc --filter pandoc-citeproc -s build_tools/format.yaml architecture.md  \
	-o ./out/architecture.pdf

technical:
	pandoc -s build_tools/format.yaml technical_back_end_documentation.md \
	-o ./out/technical_back_end_documentation.pdf
	pandoc -s build_tools/format.yaml technical_front_end_documentation.md \
	-o ./out/technical_front_end_documentation.pdf
	pandoc -s build_tools/format.yaml technical_domain_knowledge.md \
	-o ./out/technical_domain_knowledge.pdf

manuals:
	pandoc -s build_tools/format.yaml RRI_manual.md \
	-o ./out/RRI_manual.pdf
	pandoc -s build_tools/format.yaml user_manual.md \
	-o ./out/user_manual.pdf

report:
	pandoc -s build_tools/format.yaml final_report.md \
	-o ./out/final_report.pdf

installation:
	pandoc -s build_tools/format.yaml installation_part_0_overview.md \
	-o ./out/installation_part_0_overview.pdf
	pandoc -s build_tools/format.yaml installation_part_1_deployment_platform_setup.md \
	-o ./out/installation_part_1_deployment_platform_setup.pdf
	pandoc -s build_tools/format.yaml installation_part_2_build_and_deployment.md \
	-o ./out/installation_part_2_build_and_deployment.pdf
	pandoc -s build_tools/format.yaml installation_part_3_update_deployment.md \
	-o ./out/installation_part_3_update_deployment.pdf

all: requirements architecture technical manuals report installation
	