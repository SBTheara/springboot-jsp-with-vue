<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport"
		  content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<script src="https://cdn.jsdelivr.net/npm/vue@2"></script>
	<link href="https://cdn.jsdelivr.net/npm/@mdi/font/css/materialdesignicons.min.css" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/vuetify@2.5.0/dist/vuetify.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/vuetify@2.5.0/dist/vuetify.js"></script>
	<title>Document</title>
</head>
<body>
<div id="app"></div>

<script>
	new Vue({
		el: '#app',
		vuetify: new Vuetify(),
		data() {
			return {
				drawer: null,
				items: [
					['mdi-email', 'Inbox'],
					['mdi-account-supervisor-circle', 'Supervisors'],
					['mdi-clock-start', 'Clock-in'],
				],
				listItems: [
					{ header: 'Today' },
					{
						avatar: 'https://cdn.vuetifyjs.com/images/lists/1.jpg',
						title: 'Brunch this weekend?',
						subtitle: `<span class="text--primary">Ali Connors</span> &mdash; I'll be in your neighborhood doing errands this weekend. Do you want to hang out?`,
					},
					{ divider: true, inset: true },
					{
						avatar: 'https://cdn.vuetifyjs.com/images/lists/2.jpg',
						title: 'Summer BBQ <span class="grey--text text--lighten-1">4</span>',
						subtitle: `<span class="text--primary">to Alex, Scott, Jennifer</span> &mdash; Wish I could come, but I'm out of town this weekend.`,
					},
					{ divider: true, inset: true },
					{
						avatar: 'https://cdn.vuetifyjs.com/images/lists/3.jpg',
						title: 'Oui oui',
						subtitle: '<span class="text--primary">Sandra Adams</span> &mdash; Do you have Paris recommendations? Have you ever been?',
					},
					{ divider: true, inset: true },
					{
						avatar: 'https://cdn.vuetifyjs.com/images/lists/4.jpg',
						title: 'Birthday gift',
						subtitle: '<span class="text--primary">Trevor Hansen</span> &mdash; Have any ideas about what we should get Heidi for her birthday?',
					},
					{ divider: true, inset: true },
					{
						avatar: 'https://cdn.vuetifyjs.com/images/lists/5.jpg',
						title: 'Recipe to try',
						subtitle: '<span class="text--primary">Britta Holt</span> &mdash; We should eat this: Grate, Squash, Corn, and tomatillo Tacos.',
					},
					{
						avatar: 'https://cdn.vuetifyjs.com/images/lists/1.jpg',
						title: 'Brunch this weekend?',
						subtitle: `<span class="text--primary">Ali Connors</span> &mdash; I'll be in your neighborhood doing errands this weekend. Do you want to hang out?`,
					},
					{ divider: true, inset: true },
					{
						avatar: 'https://cdn.vuetifyjs.com/images/lists/2.jpg',
						title: 'Summer BBQ <span class="grey--text text--lighten-1">4</span>',
						subtitle: `<span class="text--primary">to Alex, Scott, Jennifer</span> &mdash; Wish I could come, but I'm out of town this weekend.`,
					},
					{ divider: true, inset: true },
					{
						avatar: 'https://cdn.vuetifyjs.com/images/lists/3.jpg',
						title: 'Oui oui',
						subtitle: '<span class="text--primary">Sandra Adams</span> &mdash; Do you have Paris recommendations? Have you ever been?',
					},
					{ divider: true, inset: true },
					{
						avatar: 'https://cdn.vuetifyjs.com/images/lists/4.jpg',
						title: 'Birthday gift',
						subtitle: '<span class="text--primary">Trevor Hansen</span> &mdash; Have any ideas about what we should get Heidi for her birthday?',
					},
					{ divider: true, inset: true },
					{
						avatar: 'https://cdn.vuetifyjs.com/images/lists/5.jpg',
						title: 'Recipe to try',
						subtitle: '<span class="text--primary">Britta Holt</span> &mdash; We should eat this: Grate, Squash, Corn, and tomatillo Tacos.',
					},
				],
			};
		},
		template: `
           <v-app id="inspire">
            <v-navigation-drawer
              v-model="drawer"
              app

            >
                <v-list>
				<v-list-item
				  v-for="([icon, text], i) in items"
				  :key="i"
				  link
				>
				  <v-list-item-icon>
					<v-icon>{{ icon }}</v-icon>
				  </v-list-item-icon>

				  <v-list-item-content>
					<v-list-item-title>{{ text }}</v-list-item-title>
				  </v-list-item-content>
				</v-list-item>
			  </v-list>
            </v-navigation-drawer>

            <v-app-bar app>
              <v-app-bar-nav-icon @click="drawer = !drawer"></v-app-bar-nav-icon>

              <v-toolbar-title>Application</v-toolbar-title>
            </v-app-bar>

            <v-main>
				<v-list three-line>
				  <template v-for="(item, index) in listItems">
					<v-subheader
					  v-if="item.header"
					  :key="item.header"
					  v-text="item.header"
					></v-subheader>

					<v-divider
					  v-else-if="item.divider"
					  :key="index"
					  :inset="item.inset"
					></v-divider>

					<v-list-item
					  v-else
					  :key="item.title"
					>
					  <v-list-item-avatar>
						<v-img :src="item.avatar"></v-img>
					  </v-list-item-avatar>

					  <v-list-item-content>
						<v-list-item-title v-html="item.title"></v-list-item-title>
						<v-list-item-subtitle v-html="item.subtitle"></v-list-item-subtitle>
					  </v-list-item-content>
					</v-list-item>
				  </template>
				</v-list>
            </v-main>
          </v-app>
      `
	});
</script>
</body>

</html>