import type { PagesConfig } from "../types";

export const PAGES: PagesConfig = {
    home: {
        title: "About Me",
        subtitle: "",
        isActive: true,
    },
    projects: {
        title: "Research Projects",
        subtitle: "Nanoscale memristors, cryogenic instrumentation, and plasmonic simulations.",
        isActive: true,
    },
    publications: {
        title: "Publications",
        subtitle: "Preprints, submitted manuscripts, and research papers.",
        isActive: true,
    },
    teaching: {
        title: "Teaching & Mentoring",
        subtitle: "Physics and chemistry tutoring and STEM outreach leadership.",
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
