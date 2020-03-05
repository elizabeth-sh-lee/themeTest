<div class="mx-1 mx-sm-3 order-md-1 lunar-user">
	<@liferay.user_personal_bar />
</div>

<#--  below comment fixes the navbar but gets rid of liferay portal navbar -- probably why the user's navbar is stored as a banner  -->
<#--  <div class="navbar fixed-top navbar-light bg-light" id="lunarNav">  -->
<div class="collapse navbar-collapse" id="lunarNav">
	<nav class="${nav_css_class}" id="navigation" role="navigation">
		<ul aria-label="<@liferay.language key="site-pages" />" class="navbar-nav mr-auto" role="menubar">
			<#list nav_items as nav_item>
				<#assign
				nav_item_attr_has_popup = ""
				nav_item_css_class = "nav-item"
				nav_item_layout = nav_item.getLayout()
				nav_item_caret = ""
				/>


				<#if nav_item.isSelected()>
					<#assign
						nav_item_attr_has_popup = "aria-haspopup='true'"
						nav_item_css_class = "selected"
					/>
				</#if>

				<#if nav_item.hasChildren()>
					<#assign
						nav_item_css_class = "${nav_item_css_class} dropdown"
						nav_item_caret = '<svg class="lexicon-icon">
						<use xlink:href="${images_folder}/lexicon/icons.svg#caret-bottom" />
						</svg>'
					/>
				</#if>


				<li class="${nav_item_css_class}" id="layout_${nav_item.getLayoutId()}" role="presentation">
					<a 
						aria-labelledby="layout_${nav_item.getLayoutId()}" 
						class="nav-link" ${nav_item_attr_has_popup} 
						href="${nav_item.getURL()}" 
						${nav_item.getTarget()} 
						role="menuitem"
					>
					<span>
						<@liferay_theme["layout-icon"] layout=nav_item_layout /> 
						${nav_item.getName()}
					</span> 
					${nav_item_caret}
					</a>

					<#if nav_item.hasChildren()>
						<ul class="child-menu" role="menu">
							<#list nav_item.getChildren() as nav_child>
								<#assign
									nav_child_css_class = "nav-item"
								/>

								<#if nav_item.isSelected()>
									<#assign
										nav_child_css_class = "nav-item selected"
									/>
								</#if>

								<li class="${nav_child_css_class}" id="layout_${nav_child.getLayoutId()}" role="presentation">
									<a aria-labelledby="layout_${nav_child.getLayoutId()}" class="nav-link" href="${nav_child.getURL()}" ${nav_child.getTarget()} role="menuitem">${nav_child.getName()}</a>
								</li>
							</#list>
						</ul>
					</#if>
				</li>
			</#list>
		</ul>
	</nav>

</div>



<#--  <nav class="application-bar application-bar-dark navbar navbar-expand-md">
	<div class="container-fluid container-fluid-max-xl">
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class="nav-link nav-link-monospaced" href="#1" role="button">
					<svg
						class="lexicon-icon lexicon-icon-product-menu-closed"
						focusable="false"
						role="presentation"
					>
						<use
							href="/images/icons/icons.svg#product-menu-closed"
						></use>
					</svg>
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link nav-link-monospaced" href="#1" role="button">
					<svg
						class="lexicon-icon lexicon-icon-angle-left"
						focusable="false"
						role="presentation"
					>
						<use href="/images/icons/icons.svg#angle-left"></use>
					</svg>
				</a>
			</li>
		</ul>
		<div class="navbar-title navbar-text-truncate">My Application Name</div>
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class="nav-link nav-link-monospaced" href="#1" role="button">
					<svg
						class="lexicon-icon lexicon-icon-cog"
						focusable="false"
						role="presentation"
					>
						<use href="/images/icons/icons.svg#cog"></use>
					</svg>
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link nav-link-monospaced" href="#1" role="button">
					<svg
						class="lexicon-icon lexicon-icon-plus"
						focusable="false"
						role="presentation"
					>
						<use href="/images/icons/icons.svg#plus"></use>
					</svg>
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link nav-link-monospaced" href="#1" role="button">
					<svg
						class="lexicon-icon lexicon-icon-simulation-menu-closed"
						focusable="false"
						role="presentation"
					>
						<use
							href="/images/icons/icons.svg#simulation-menu-closed"
						></use>
					</svg>
				</a>
			</li>
			<li class="dropdown nav-item">
				<a
					aria-expanded="false"
					aria-haspopup="true"
					class="dropdown-toggle nav-link nav-link-monospaced"
					data-toggle="dropdown"
					href="#1"
					role="button"
				>
					<svg
						class="lexicon-icon lexicon-icon-ellipsis-v"
						focusable="false"
						role="presentation"
					>
						<use href="/images/icons/icons.svg#ellipsis-v"></use>
					</svg>
				</a>
				<ul
					aria-labelledby="navbarDropdownMenuLink"
					class="dropdown-menu dropdown-menu-right"
				>
					<li><a class="dropdown-item" href="#1">Action</a></li>
					<li>
						<a class="dropdown-item" href="#1">Another action</a>
					</li>
					<li>
						<a class="dropdown-item" href="#1"
							>Something else here</a
						>
					</li>
					<li class="dropdown-divider"></li>
					<li>
						<a class="dropdown-item" href="#1">Separated link</a>
					</li>
				</ul>
			</li>
		</ul>
	</div>
</nav>  -->