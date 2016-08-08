{**
 * templates/common/footer.tpl
 *
 * Copyright (c) 2013-2015 Simon Fraser University Library
 * Copyright (c) 2000-2015 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Common site footer.
 *
 *}

</div><!-- content -->
</div><!-- main -->
</div><!-- body -->
</div><!-- container -->
{strip}
{if $currentJournal && $currentJournal->getSetting('onlineIssn')}
	{assign var=issn value=$currentJournal->getSetting('onlineIssn')}
{elseif $currentJournal && $currentJournal->getSetting('printIssn')}
	{assign var=issn value=$currentJournal->getSetting('printIssn')}
{/if}

{if $displayCreativeCommons}
	{translate key="common.ccLicense"}
{/if}
<div id="pageFooter">
{if $pageFooter}
	{$pageFooter}
{/if}
{call_hook name="Templates::Common::Footer::PageFooter"}
	<div id="standardFooter">
		{if $issn}
			<p>ISSN: {$issn}</p>
		{/if}		
		<p>Publicado por <a href="http://www.edcom.espol.edu.ec/">EDCOM</a>, forma parte de la <a href="http://www.espol.edu.ec/">ESPOL</a>.</p>
		<a href="http://www.revistas.espol.edu.ec/index.php/nawi/index">
			<img src="{$baseUrl}/plugins/themes/mpg/img/unitLogo1.png" alt="Ñawi Logo"/>
		</a>
	</div>
{/strip}
<script type="text/javascript" src="{$baseUrl}/plugins/themes/mpg/js/menu.js"></script>
</div>


{get_debug_info}
{if $enableDebugStats}{include file=$pqpTemplate}{/if}


</body>
</html>
