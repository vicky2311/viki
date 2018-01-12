<aura:application >
    <c:collapseTest header="CollapsiblePanel Demo">
    	<aura:set attribute="body">
            <ui:message title="Confirmation" severity="confirm" closable="true">
                This is an example of confirmation message.
            </ui:message>
            <ui:message title="Information" severity="info" closable="true">
                This is an example of message.
            </ui:message>
            <ui:message title="Warning" severity="warning" closable="true">
                This is an example of warning.
            </ui:message>
            <ui:message title="Error" severity="error" closable="false">
                This is an example of error message.
            </ui:message>
        </aura:set>
    </c:collapseTest>
</aura:application>