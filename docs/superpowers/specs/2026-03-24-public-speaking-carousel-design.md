# Public Speaking Grid Carousel Design

**Date:** 2026-03-24
**Project:** Portfolio Website
**Feature:** Public Speaking Section Redesign

## Overview

Transform the Public Speaking section from a static layout (featured talk + event cards) into a responsive grid carousel that displays all workshops and events with interactive hover animations.

## Current State

The Public Speaking section currently uses a two-column layout:
- Left (md:col-span-8): Large featured image with workshop details
- Right (md:col-span-4): Two smaller event cards stacked vertically

## Target Design

### Layout & Structure

**Grid Configuration:**
- 2-column responsive grid
- Desktop/Tablet (md+): 2 columns per row
- Mobile: 1 column per row
- Full-width section replacing entire current "Public Speaking" layout
- Displays all available workshop/event cards in carousel format

**Card Structure:**
Each card uses CSS Grid layout with explicit rows:
- Row 1: Workshop title (h4 font, bold)
- Row 2: Workshop location (small text, secondary color)
- Row 3: Number of attendees (small text, secondary color)
- Row 4: Photo/Image area (flexible height, maintains aspect ratio)

Layout approach: Flexbox container with photo element stretched to fill remaining space.

**Visual Hierarchy:**
- Text content (rows 1-3) stacked at top of card
- Photo (row 4) occupies remaining card height
- Clear visual separation: text block + image block
- Text background: transparent or semi-transparent overlay to ensure readability over images if photo extends upward

### Interactive Behavior

**Hover Animation:**
- Text content fades in + slides up from bottom on card hover
- Start state: opacity 0, transform translateY(20px)
- End state: opacity 1, transform translateY(0)
- Animation duration: 300ms
- Easing: cubic-bezier(0.4, 0, 0.2, 1) (Material Design easing)
- Photo remains visible at full opacity, text appears overtop

**Navigation Mechanics:**
- Carousel uses CSS transform translate to shift grid position
- Maintains current card index in state (JavaScript)
- Previous/Next buttons update index and trigger CSS transform with transition

**Navigation Buttons:**
- Previous/Next buttons advance/retreat by visible row count
  - Desktop/Tablet (2 columns): Advances by 2 cards
  - Mobile (1 column): Advances by 1 card
- At boundaries (start/end): Buttons disabled with opacity-50, cursor-not-allowed, no hover effect
- Buttons sized 44px minimum for mobile accessibility (Tailwind: px-6 py-3)

**Progress Indicators:**
- Dot indicators showing rows completed (one dot per row)
- For example: 10 cards in 2-column layout = 5 dots (5 rows)
- Active dot highlighted with primary color (#E94560)
- Inactive dots: semi-transparent (opacity-40)
- Dots centered below the grid

### Responsive Behavior

| Breakpoint | Columns | Button Layout | Dots |
|-----------|---------|--------------|------|
| Mobile (<md: <768px) | 1 | Below grid, centered | Centered below buttons |
| Tablet/Desktop (md+: ≥768px) | 2 | Left/right sides of grid | Centered below grid |

**Button Positioning Details:**
- Mobile: Buttons stack below carousel grid, centered, flex-row with gap
- Desktop: Buttons positioned absolutely or via grid template on left/right sides of carousel
- Button width: fixed 48px or use flexbox shrink on mobile layout
- Section uses max-w-7xl and maintains consistent px-8 padding

**Grid Container:**
- Uses CSS Grid or Flexbox with gap-8 (consistent with existing design)
- Width: full available (max-w-7xl parent constraint)
- Wraps to new row based on column count + gap

### Data Model

Each workshop card needs:
- `image`: Photo/thumbnail URL
- `title`: Workshop title (string, max 60 chars)
- `location`: Workshop location (string, e.g., "Cairo, Egypt" or "Online")
- `attendees`: Number of attendees (integer, displayed as formatted number, e.g., "150" or "150+")
  - Display format: Show as integer with optional '+' for unknown/variable attendance
  - Example: `attendees: 150` displays as "150 attendees"
- `id`: Unique identifier for navigation (string, e.g., "ws-001")

### Implementation Scope

**What's included:**
- Remove existing featured talk + event cards layout (lines 344-398 of code.html)
- Keep section heading "Public Speaking" with subtitle "Sharing knowledge across global stages"
- Create grid carousel container with responsive columns (1 mobile, 2 tablet+)
- Implement card component with title, location, attendees, photo
- Build hover animation for text reveal (fade + slide up)
- Create prev/next navigation buttons (disabled at boundaries)
- Add dot indicator progress system (one per row)
- Ensure full responsive behavior (mobile, tablet, desktop)
- Maintain existing section styling (py-32 px-8 max-w-7xl)

**What's not included:**
- Links to individual workshop pages (can be added to cards later)
- Filtering/category buttons (mentioned in original request but deferred)
- Infinite scroll looping (carousel uses discrete prev/next with boundaries)
- Social media sharing buttons
- Video playback or embedded media
- Lazy loading optimization (initial load shows all cards)

### Design Tokens

**Animation:**
- Duration: 300ms
- Easing: cubic-bezier(0.4, 0, 0.2, 1)
- Property: opacity, transform

**Colors:**
- Active dot: #E94560 (primary)
- Inactive dot: rgba(255, 255, 255, 0.4)
- Button background: surface-container-high (hover: surface-container-highest)
- Button text: on-surface (disabled: on-surface/40)
- Card background: surface-container

**Spacing:**
- Section padding: py-32 px-8 (consistent with existing sections)
- Grid gap: gap-8 (consistent with existing grid)
- Card padding: p-6 (internal spacing)
- Button gap: gap-2 (between buttons or in flex layout)

**Typography:**
- Card title: h4, font-bold
- Card location/attendees: text-xs, text-on-surface/40, uppercase tracking-widest

**Border Radius:**
- Card containers: rounded-2xl (0.75rem)
- Button corners: rounded-lg (0.5rem)
- Image corners: rounded-xl (0.75rem)

### Success Criteria

**Functional:**
- ✅ Grid displays 2 columns on tablet/desktop (md+), 1 column on mobile
- ✅ All workshop cards display without truncation
- ✅ Text animates in (fade + slide up) on card hover
- ✅ Previous/Next buttons advance carousel by full row
- ✅ Buttons disabled at start/end with visual indication (opacity-50)
- ✅ Dot indicators show current row position and update with navigation
- ✅ Navigation works on all screen sizes

**Responsive:**
- ✅ Mobile (320px): 1 column, buttons below grid, readable on small screens
- ✅ Tablet (768px): 2 columns, buttons on sides, proper spacing
- ✅ Desktop (1024px+): 2 columns, full viewport width, max-w-7xl constraint

**Design & UX:**
- ✅ Maintains existing design language (colors, typography, spacing)
- ✅ Consistent with Material Design 3 tokens used in portfolio
- ✅ Smooth animations (300ms, proper easing)
- ✅ Touch-friendly button targets (44px minimum)

**Accessibility:**
- ✅ Respects `prefers-reduced-motion` (disables animations if set)
- ✅ Button labels: `aria-label="Previous slide"` and `aria-label="Next slide"`
- ✅ Carousel region: `aria-label="Public speaking workshops carousel"`
- ✅ Image alt text: meaningful descriptions for each workshop photo
- ✅ Keyboard navigation: arrow keys (left/right) advance/retreat carousel
- ✅ Focus management: buttons are keyboard accessible and show focus state

**Technical:**
- ✅ No console errors or warnings
- ✅ No accessibility violations (WCAG 2.1 Level AA)
- ✅ Uses vanilla JavaScript (no external carousel library)
- ✅ CSS only (Tailwind classes + custom animations in style tag)

### Section Layout

The Public Speaking section structure:
```
<section id="speaking">
  <!-- Centered heading block (keep as-is) -->
  <div class="space-y-2 text-center">
    <h2>Public Speaking</h2>
    <p>Sharing knowledge across global stages</p>
  </div>

  <!-- Carousel grid with navigation -->
  <div class="relative">
    <!-- Grid carousel with cards -->
    <div class="grid"><!-- cards --></div>

    <!-- Navigation buttons (absolute on desktop, below on mobile) -->
    <div><!-- prev/next buttons --></div>
  </div>

  <!-- Dot indicators -->
  <div class="flex justify-center gap-2"><!-- dots --></div>
</section>
```

- Heading remains centered above carousel (no change to current heading block)
- Section maintains max-w-7xl, py-32, px-8 structure
- Background: transparent (inherits from page)

## Notes

- Coordinate with existing Tailwind setup (currently using gap-8, py-32, etc.)
- Data source: Extract workshop data from existing code or provide as JavaScript array
- Animation should respect `prefers-reduced-motion` for accessibility
- Consider future enhancement: clickable workshop cards linking to details page
- Consider future enhancement: keyboard arrow key navigation
