#!/bin/sh

cat \
	openseesOverview.md \
	openseesProjectSize.md \
	openseesDecisionMatrixApplication.md \
	openseesDecisionMatrixPlatform.md \
	openseesRunLinux.md \
	openseesResources.md \
	> OSDesignSafe.md

cat \
	openseesExpress.md \
	openseesSP.md \
	openseesMP.md \
	openseesPy.md \
	> OSApplications.md

cat \
	openseesRunning.md \
	openseesRunVM.md \
	openseesRunVM_Specs.md \
	openseesRunWebPortal.md \
	openseesRunWebPortal_Form.md \
	openseesRunWebPortal_Specs.md \
	openseesRunJupyterPy.md \
	openseesRunJupyterHPC.md \
	openseesRunTACC.md \
	> OSPlatforms.md


cat \
	OSDesignSafe.md \
	OSApplications.md \
	OSPlatforms.md \
	> opensees.md



