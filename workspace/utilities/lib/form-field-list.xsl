<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="form-controls.xsl" />

<!-- CORE COMPONENT : form-field-list ===========================================================-->
	<xsl:template name="form-field-list">
		<xsl:param name="element" select="'select'"/>
		<!--xsl:param name="class" select="$form-field-class" /-->
		<xsl:param name="class-error" select="$form-field-class-error"/>
		<xsl:param name="class-valid" select="$form-field-class-valid"/>
		<xsl:param name="class-empty"/>
		<xsl:param name="class-not-empty"/>
		<!--xsl:param name="ctn-class"/-->
		<xsl:param name="ctn-class-error"/>
		<xsl:param name="ctn-class-valid"/>
		<xsl:param name="ctn-class-empty"/>
		<xsl:param name="ctn-class-not-empty"/>
		<!--xsl:param name="label-class" select="$form-field-label-class" /-->
		<xsl:param name="label-class-error"/>
		<xsl:param name="label-class-valid"/>
		<xsl:param name="label-class-empty"/>
		<xsl:param name="label-class-not-empty"/>
		<xsl:param name="error-message-class"/>
		<xsl:param name="error-state-class"/>
		<xsl:param name="error-message-state-class"/>
		<xsl:param name="valid-state-class"/>
		<xsl:param name="clear-class"/>
		<xsl:param name="state-class" select="$form-field-state-class"/>
		<xsl:param name="progress-class"/>
		<xsl:param name="required-class" select="$form-field-required-class"/>
		<xsl:param name="name"/>
		<xsl:param name="id">
			<xsl:call-template name="form-controls-create-field-id">
				<xsl:with-param name="name" select="$name"/>
			</xsl:call-template>
		</xsl:param>
		<xsl:param name="label" select="$name"/>
		<xsl:param name="placeholder"/>
		<xsl:param name="rules"/>
		<xsl:param name="disabled" select="false()"/>
		<xsl:param name="required" select="contains($rules, 'required')"/>
		<xsl:param name="value"/>
		<xsl:param name="content"/>
		
		<xsl:call-template name="form-field">
			<xsl:with-param name="element" select="$element" />
			<xsl:with-param name="type" select="''" />
			<!--xsl:with-param name="class" select="$class" /-->
			<xsl:with-param name="class-error" select="$class-error" />
			<xsl:with-param name="class-valid" select="$class-valid" />
			<xsl:with-param name="class-empty" select="$class-empty" />
			<xsl:with-param name="class-not-empty" select="$class-not-empty" />
			<!--xsl:with-param name="ctn-class" select="$ctn-class" /-->
			<xsl:with-param name="ctn-class-error" select="$ctn-class-error" />
			<xsl:with-param name="ctn-class-valid" select="$ctn-class-valid" />
			<xsl:with-param name="ctn-class-empty" select="$ctn-class-empty" />
			<xsl:with-param name="ctn-class-not-empty" select="$ctn-class-not-empty" />
			<!--xsl:with-param name="label-class" select="concat('pointer-events-none ', $label-class)" /-->
			<xsl:with-param name="label-class-error" select="$label-class-error" />
			<xsl:with-param name="label-class-valid" select="$label-class-valid" />
			<xsl:with-param name="label-class-empty" select="$label-class-empty" />
			<xsl:with-param name="label-class-not-empty" select="$label-class-not-empty" />
			<xsl:with-param name="error-message-class" select="$error-message-class" />
			<xsl:with-param name="error-message-state-class" select="$error-message-state-class" />
			<xsl:with-param name="error-state-class" select="$error-state-class" />
			<xsl:with-param name="valid-state-class" select="$valid-state-class" />
			<xsl:with-param name="clear-class" select="$clear-class" />
			<xsl:with-param name="state-class" select="$state-class" />
			<xsl:with-param name="progress-class" select="$progress-class" />
			<xsl:with-param name="required-class" select="$required-class" />
			<xsl:with-param name="name" select="$name" />
			<xsl:with-param name="id" select="$id" />
			<xsl:with-param name="label" select="$label" />
			<xsl:with-param name="placeholder" select="$placeholder" />
			<xsl:with-param name="rules" select="$rules" />
			<xsl:with-param name="disabled" select="$disabled" />
			<xsl:with-param name="required" select="$required" />
			<xsl:with-param name="value" select="$value" />
			<xsl:with-param name="content" select="$content" />
		</xsl:call-template>
	</xsl:template>
</xsl:stylesheet>
