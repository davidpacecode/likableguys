import "$styles/index.css"
import "$styles/syntax-highlighting.css"
import * as Turbo from "@hotwired/turbo"
import "bridgetown-lit-renderer"

// Example Shoelace components. Mix 'n' match however you like!
import "@shoelace-style/shoelace/dist/components/button/button.js"
import "@shoelace-style/shoelace/dist/components/icon/icon.js"
import "@shoelace-style/shoelace/dist/components/spinner/spinner.js"
import "@shoelace-style/shoelace/dist/components/input/input.js"
import "@shoelace-style/shoelace/dist/components/option/option.js"
import "@shoelace-style/shoelace/dist/components/select/select.js"
import "@shoelace-style/shoelace/dist/components/tab-panel/tab-panel.js"
import "@shoelace-style/shoelace/dist/components/tab-group/tab-group.js"
import "@shoelace-style/shoelace/dist/components/tab/tab.js"

// Use the public icons folder:
import { setBasePath } from "@shoelace-style/shoelace/dist/utilities/base-path.js"
setBasePath("/shoelace-assets")

/**
 * Adds support for declarative shadow DOM. Requires your HTML <head> to include:
 * `<meta name="turbo-cache-control" content="no-cache" />`
 */
import * as TurboShadow from "turbo-shadow"

/**
 * Uncomment the line below to add transition animations when Turbo navigates.
 * Use data-turbo-transition="false" on your <main> element for pages where
 * you don't want any transition animation.
 */
// import "./turbo_transitions.js"

// Import all JavaScript & CSS files from src/_components
import components from "$components/**/*.{js,jsx,js.rb,css}"

console.info("Bridgetown is loaded!")
