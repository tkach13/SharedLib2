package ge.tkach13.sharedlib

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform