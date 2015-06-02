package org.phaidra.xdi;

import java.util.ArrayList;
import java.util.List;

import xdi2.client.XDIClient;
import xdi2.client.exceptions.Xdi2ClientException;
import xdi2.client.http.XDIHttpClient;
import xdi2.core.syntax.XDIStatement;
import xdi2.messaging.Message;
import xdi2.messaging.MessageEnvelope;
import xdi2.messaging.constants.XDIMessagingConstants;

public class XdiRegisterService {

	private String xdiEndpointUri;

	public XdiRegisterService(String xdiEndpointUri) {

		this.xdiEndpointUri = xdiEndpointUri;
	}

	public void setIdentifiers(String phaidraIdentifier, String[] identifiers) throws Xdi2ClientException {

		XDIClient client = new XDIHttpClient(this.getXdiEndpointUri());

		MessageEnvelope me = new MessageEnvelope();
		Message m = me.createMessage(XDIMessagingConstants.XDI_ADD_ANONYMOUS);

		List<XDIStatement> statements = new ArrayList<XDIStatement> ();

		for (String identifier : identifiers) {

			statements.add(XDIStatement.create("*!(" + identifier + ")/$ref/*!(" + phaidraIdentifier + ")"));
			statements.add(XDIStatement.create("*!(" + phaidraIdentifier + ")/$is/*!(" + identifier + ")"));
		}

		m.createSetOperation(statements.iterator());

		client.send(me, null);
	}

	public String getXdiEndpointUri() {

		return this.xdiEndpointUri;
	}

	public void setXdiEndpointUri(String xdiEndpointUri) {

		this.xdiEndpointUri = xdiEndpointUri;
	}
}
