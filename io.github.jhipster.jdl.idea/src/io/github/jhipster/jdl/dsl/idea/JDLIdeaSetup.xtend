/*
 * generated by Xtext 2.10.0
 */
package io.github.jhipster.jdl.dsl.idea

import org.eclipse.xtext.ISetup
import org.eclipse.xtext.idea.extensions.EcoreGlobalRegistries

class JDLIdeaSetup implements ISetup {

	override createInjectorAndDoEMFRegistration() {
		EcoreGlobalRegistries.ensureInitialized
		new JDLStandaloneSetupIdea().createInjector
	}

}