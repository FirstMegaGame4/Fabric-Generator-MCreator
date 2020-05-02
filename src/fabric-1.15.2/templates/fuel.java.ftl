<#-- @formatter:off -->
<#include "mcitems.ftl">

package ${package}.fuel;

public class ${name}Fuel {

	public void initialize() {
		FuelRegistry.INSTANCE.add(${mappedMCItemToItem(data.block)}, ${data.power});
	}

}
<#-- @formatter:on -->