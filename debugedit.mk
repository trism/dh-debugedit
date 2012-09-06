# debugedit.mk - dh-debugedit integration for CDBS.

CDBS_BUILD_DEPENDS_rules_debugedit := dh-debugedit
CDBS_BUILD_DEPENDS += , $(CDBS_BUILD_DEPENDS_rules_debugedit)

common-binary-post-install-arch:: debian/debugedit.after

debian/debugedit.after:
	dh_debugedit $(DEB_DH_DEBUGEDIT_ARGS)
