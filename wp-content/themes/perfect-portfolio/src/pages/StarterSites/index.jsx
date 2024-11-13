import { __ } from "@wordpress/i18n";
import { Card } from "../../components";
import { mainDemo, demo2, demo3, demo4, demo5, demo6, demo7 } from "../../components/images"

const StarterSites = () => {
    const starterCardSettings = [
        {
            heading: __( 'Perfect Portfolio (Pro)', 'perfect-portfolio' ),
            imageurl: mainDemo,
            buttonUrl: "https://rarathemesdemo.com/perfect-portfolio-pro/"
        },
        {
            heading: __( 'Elegant Portfolio', 'perfect-portfolio' ),
            imageurl:  demo2,
            buttonUrl: "https://rarathemesdemo.com/perfect-portfolio-pro-2/"
        },
        {
            heading: __( 'Elegant Dark', 'perfect-portfolio' ),
            imageurl: demo3,
            buttonUrl: "https://rarathemesdemo.com/perfect-portfolio-pro-dark-2/"
        },
        {
            heading: __( 'Sleek Portfolio', 'perfect-portfolio' ),
            imageurl: demo4,
            buttonUrl: "https://rarathemesdemo.com/perfect-portfolio-pro-3/"
        },
        {
            heading: __( 'Sleek Portfolio Dark', 'perfect-portfolio' ),
            imageurl: demo5,
            buttonUrl: "https://rarathemesdemo.com/perfect-portfolio-pro-dark-3/"
        },
        {
            heading: __( 'William', 'perfect-portfolio' ),
            imageurl: demo6,
            buttonUrl: "https://rarathemesdemo.com/perfect-portfolio-pro-4/"
        },
        {
            heading: __( 'Ava Donovan', 'perfect-portfolio' ),
            imageurl: demo7,
            buttonUrl: "https://rarathemesdemo.com/perfect-portfolio-pro-5/"
        },
    ];

    return (
        <>
            <Card 
              cardList={starterCardSettings}
              cardPlace='starter'
              cardCol='three-col'
            />
        </>
    )
}

export default StarterSites;