import { memo } from 'react'

let render = 0

export const Header = memo(function Header() {
    console.log(`render${render}`)
    render++
    return <header>header</header>
})