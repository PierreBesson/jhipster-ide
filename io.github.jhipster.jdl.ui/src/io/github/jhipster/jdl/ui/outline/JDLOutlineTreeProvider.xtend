/*
 * generated by Xtext 2.10.0
 */
package io.github.jhipster.jdl.ui.outline

import io.github.jhipster.jdl.jdl.JdlDomainModel
import io.github.jhipster.jdl.jdl.JdlEntityField
import io.github.jhipster.jdl.jdl.JdlOption
import io.github.jhipster.jdl.jdl.JdlRelation
import org.eclipse.emf.ecore.EObject
import org.eclipse.xtext.ui.editor.outline.impl.DefaultOutlineTreeProvider
import org.eclipse.xtext.ui.editor.outline.impl.DocumentRootNode

/**
 * Customization of the default outline structure.
 *
 * See https://www.eclipse.org/Xtext/documentation/304_ide_concepts.html#outline
 */
class JDLOutlineTreeProvider extends DefaultOutlineTreeProvider {
	
	override protected _createChildren(DocumentRootNode parentNode, EObject modelElement) {
		
		// skip root node
		if (modelElement instanceof JdlDomainModel) {
			for (feature : modelElement.features) {
				createNode(parentNode, feature);
			}
			
		}

	}
	
	def protected _isLeaf(JdlOption it) {
		true
	}

	def protected _isLeaf(JdlEntityField it) {
		true
	}

	def protected _isLeaf(JdlRelation it) {
		true
	}
}