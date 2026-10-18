import type { SocialLink } from "../types";

export const SOCIALS: SocialLink[] = [
    {
        name: "Github",
        href: "https://github.com/taixuann",
        linkTitle: `Follow Tai on Github`,
        isActive: true,
    },
    {
        name: "Mail",
        href: "mailto:taiixuann@gmail.com",
        linkTitle: `Send an email to Tai`,
        isActive: true,
    },
    {
        name: "LinkedIn",
        href: "https://www.linkedin.com/in/tai-nguyen-xuan/",
        linkTitle: `Tai Nguyen Xuan on LinkedIn`,
        isActive: true,
    },
    {
        name: "Google Scholar",
        href: "https://scholar.google.com/",
        linkTitle: `Tai on Google Scholar`,
        isActive: false,
    },
    {
        name: "ORCID",
        href: "https://orcid.org/",
        linkTitle: `Tai on ORCID`,
        isActive: false,
    },
];

export const SOCIAL_ICONS: Record<string, string> = {
    Github: "Github",
    Mail: "Mail",
    Linkedin: "LinkedIn",
    "Google Scholar": "GoogleScholar",
    ORCID: "ORCID",
    RSS: "RSS",
};