<script setup>
import {ref} from 'vue'
const msg = ref("hello world")
</script>

<template>
	<main>
		{{ msg }}
	</main>
</template>

<style  scoped>
	main {
		text-align: center;
	}
</style>
