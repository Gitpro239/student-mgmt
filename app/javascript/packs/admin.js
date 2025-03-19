import "@fortawesome/fontawesome-free/css/all"

require("trix")
require("@rails/actiontext")


import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import $ from 'jquery';
global.$ = jQuery;

import "bootstrap";
import "./plugins/jquery.easing.min"
import "./plugins/sb-admin-2.min"
import "./plugins/chart-area-demo"
import "./plugins/chart-pie-demo"
import "./plugins/Chart.min"
