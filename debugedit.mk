# debugedit.mk - dh-debugedit integration for CDBS.

CDBS_BUILD_DEPENDS_rules_debugedit := dh-debugedit
CDBS_BUILD_DEPENDS += , $(CDBS_BUILD_DEPENDS_rules_debugedit)

common-binary-post-install-arch:: $(patsubst %,binary-debugedit/%,$(DEB_ALL_PACKAGES))

$(patsubst %,binary-debugedit/%,$(DEB_ALL_PACKAGES)):
	dh_debugedit -p$(cdbs_curpkg) $(DEB_DH_DEBUGEDIT_ARGS)
