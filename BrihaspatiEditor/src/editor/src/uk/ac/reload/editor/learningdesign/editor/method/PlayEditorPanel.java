/**
 *  RELOAD TOOLS
 *
 *  Copyright (c) 2004 Oleg Liber, Bill Olivier, Phillip Beauvoir
 *
 *  Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 *
 *  The above copyright notice and this permission notice shall be included in
 *  all copies or substantial portions of the Software.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 *  Project Management Contact:
 *
 *  Oleg Liber
 *  Bolton Institute of Higher Education
 *  Deane Road
 *  Bolton BL3 5AB
 *  UK
 *
 *  e-mail:   o.liber@bolton.ac.uk
 *
 *
 *  Technical Contact:
 *
 *  Phillip Beauvoir
 *  e-mail:   p.beauvoir@bolton.ac.uk
 *
 *  Web:      http://www.reload.ac.uk
 *
 */

package uk.ac.reload.editor.learningdesign.editor.method;

import uk.ac.reload.dweezil.gui.LabelComponentPanel;
import uk.ac.reload.dweezil.gui.layout.RelativeLayoutManager;
import uk.ac.reload.editor.datamodel.DataComponent;
import uk.ac.reload.editor.datamodel.DataElement;
import uk.ac.reload.editor.gui.IdentifierLabelTextField;
import uk.ac.reload.editor.gui.TitledEditorPanel;
import uk.ac.reload.editor.gui.widgets.DataElementCheckBox;
import uk.ac.reload.editor.learningdesign.datamodel.method.Play;
import uk.ac.reload.editor.learningdesign.editor.shared.MetadataPanel;
import uk.ac.reload.moonunit.learningdesign.LD_Core;

/**
 * PlayEditorPanel
 *
 * @author Phillip Beauvoir
 * @version $Id: PlayEditorPanel.java,v 1.1 1998/03/26 15:40:32 ynsingh Exp $
 */
public class PlayEditorPanel
extends TitledEditorPanel
{
	
	/**
	 * Whether or not to show the Identifier field
	 */
	static final boolean SHOW_IDENTIFIER = false;

	/**
     * Identifier TextField
     */
    private IdentifierLabelTextField _tfIdentifier;

	/**
	 * IsVisible
	 */
	protected DataElementCheckBox _cbIsVisible;

	/**
     * Play Completion Panel
     */
    private PlayCompletionPanel _playCompletionPanel;
    
    /**
     * Metadata Panel
     */
    private MetadataPanel _metadataPanel;


    /**
	 * Default Constructor
	 */
	public PlayEditorPanel() {

	}
	
	/** 
	 * Over-ride to set sub-panels
	 */
	public void setComponent(DataComponent dataComponent) {
	    super.setComponent(dataComponent);

	    // Wrap the Play Element
	    DataElement playElement = dataComponent.getDataElement();
	    
	    // Identifier
	    if(SHOW_IDENTIFIER) {
	        _tfIdentifier.setElement(playElement);
	    }
	    
	    // Is Visible
	    _cbIsVisible.setAttribute(playElement, LD_Core.ISVISIBLE, true);
	    
	    // Completion Panel
	    _playCompletionPanel.setComponent(dataComponent);
	    
        // Metadata
        _metadataPanel.setMetadataType(((Play)dataComponent).getMetadataType());
	}

	/**
	 * Set up the view
	 */
	protected void setupView() {
		super.setupView();

	    RelativeLayoutManager layoutManager = getRelativeLayoutManager();
		
		// Identifier
	    if(SHOW_IDENTIFIER) {
	        _tfIdentifier = new IdentifierLabelTextField();
	    	LabelComponentPanel panelIdentifier = new LabelComponentPanel("Identifier:", _tfIdentifier, 0.3, 0);
			layoutManager.addFromLeftToRightEdges(panelIdentifier, "panelIdentifier", TOPPANEL_ID,
			        RelativeLayoutManager.BOTTOM, 10, 10);
	    }

		// IsVisible Checkbox
		_cbIsVisible  = new DataElementCheckBox("Visible", true);
		if(SHOW_IDENTIFIER) {
		    layoutManager.addFromLeftToRightEdges(_cbIsVisible, "_cbIsVisible", "panelIdentifier", 
		            RelativeLayoutManager.BOTTOM, 7, 6);
		}
		else {
		    layoutManager.addFromLeftToRightEdges(_cbIsVisible, "_cbIsVisible", TOPPANEL_ID, 
		            RelativeLayoutManager.BOTTOM, 7, 6);
		}

		// Completion Panel
		_playCompletionPanel = new PlayCompletionPanel(false);
		layoutManager.addFromLeftToRightEdges(_playCompletionPanel, "compPanel", "_cbIsVisible",
		        RelativeLayoutManager.BOTTOM, 12, 10);
		
		// Metadata
		_metadataPanel = new MetadataPanel();
		layoutManager.addFromLeftToRightEdges(_metadataPanel, "_metadataPanel", "compPanel",
				RelativeLayoutManager.BOTTOM, 20, 10);
	}

	/**
	 * Clean up
	 */
	public void cleanup() {
	    super.cleanup();
	    
	    if(_playCompletionPanel != null) {
	        _playCompletionPanel.cleanup();
	    }
	    
        if(_metadataPanel != null) {
            _metadataPanel.cleanup();
        }

	}
	
}
