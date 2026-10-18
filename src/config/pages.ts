import type { PagesConfig } from "../types";

export const PAGES: PagesConfig = {
    home: {
        title: "About Me",
        subtitle: "",
        isActive: true,
    },
    projects: {
        title: "Research Projects",
        subtitle: "Thin-film memristors, cryogenic instrumentation, and computational electrodynamics.",
        isActive: true,
    },
    publications: {
        title: "Publications & Manuscripts",
        subtitle: "Preprints, submitted manuscripts, and research contributions.",
        isActive: true,
    },
    cv: {
        title: "Curriculum Vitae",
        subtitle: "Academic history, research appointments, awards, and technical skills.",
        isActive: true,
    },
    tags: {
        title: "Tags",
        subtitle: "Explore content by topic.",
        isActive: true,
    },
    teaching: {
        title: "Teaching & Mentoring",
        subtitle: "Academic tutoring and outreach.",
        isActive: false,
    },
    blog: {
        title: "Blog",
        subtitle: "Thoughts and research notes.",
        isActive: false,
    },
    talks: {
        title: "Talks & Presentations",
        subtitle: "Conference presentations and lectures.",
        isActive: false,
    },
};
