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
Each card contains (top to bottom):
1. Workshop title
2. Workshop location
3. Number of attendees
4. Photo (background image or visual element)

**Visual Hierarchy:**
- Text content appears above the photo in the card
- Photo serves as the visual anchor at the bottom
- Text-to-image ratio creates clear separation of content

### Interactive Behavior

**Hover Animation:**
- Text content slides in / fades in smoothly on card hover
- Animation duration: ~300ms for smooth reveal
- Easing: ease-out or cubic-bezier for natural motion
- Photo remains visible, text enhances the card experience

**Navigation:**
- Previous/Next buttons to cycle through carousel
- Button behavior:
  - Desktop: Scroll by full visible row (advances by 2 cards)
  - Tablet: Scroll by full visible row (advances by 2 cards)
  - Mobile: Scroll by 1 card at a time
- Buttons disabled at start/end if not looping
- Icon buttons with arrow indicators (← →)

**Progress Indicators:**
- Dot indicators below the grid showing current position
- One dot per card (or per row, depending on UX preference)
- Active dot highlighted with primary color
- Dots clickable to jump to specific position (optional enhancement)

### Responsive Behavior

| Breakpoint | Columns | Button Layout | Dots |
|-----------|---------|--------------|------|
| Mobile (<md) | 1 | Below grid, centered | Centered below buttons |
| Tablet (md) | 2 | Sides of grid | Centered below grid |
| Desktop (lg+) | 2 | Sides of grid | Centered below grid |

### Data Model

Each workshop card needs:
- `image`: Photo/thumbnail URL
- `title`: Workshop title (string)
- `location`: Workshop location (string)
- `attendees`: Number of attendees (number or string)
- `id`: Unique identifier for navigation

### Implementation Scope

**What's included:**
- Remove existing featured talk + event cards layout
- Create grid carousel container with responsive columns
- Implement card component with title, location, attendees, photo
- Build hover animation for text reveal
- Create prev/next navigation buttons
- Add dot indicator progress system
- Ensure full responsive behavior

**What's not included:**
- Links to workshop details (can be added later)
- Filtering/category buttons (mentioned but deferred)
- Infinite scroll looping (uses discrete prev/next)
- Social media sharing (not in scope)

### Design Tokens (TBD)

- Animation duration: 300ms
- Button color: Primary color scheme
- Dot size: 8-12px diameter
- Spacing: Follow existing grid system (py-32, px-8 pattern)
- Font sizes: Match existing h4/p hierarchy
- Border radius: Follow existing design (rounded-2xl for containers)

### Success Criteria

✅ Grid displays 2 columns on desktop, 1 on mobile
✅ All workshop cards visible (no truncation)
✅ Text animates in/fades on hover
✅ Navigation buttons work and update position
✅ Dot indicators show current carousel state
✅ Fully responsive on all screen sizes
✅ Maintains existing design language and color scheme
✅ No console errors or accessibility violations

## Notes

- Coordinate with existing Tailwind setup (currently using gap-8, py-32, etc.)
- Consider performance if showing many cards (lazy loading if needed)
- Ensure touch-friendly button size on mobile (min 44px tap target)
- Animation should respect `prefers-reduced-motion` for accessibility
