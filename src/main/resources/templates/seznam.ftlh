[#ftl]
[@c.page]
    <div class="seznam">
        <a href="/detail">
            <div class="vizitka">
                    [#list vizitky as vizitka_repository]
                <div class="jmeno">${vizitka_repository.celeJmeno}</div>
                <div class="firma">${vizitka_repository.firma}</div>
                <div class="udaje">
                    <div class="adresa">
                        <div>${vizitka_repository.ulice}</div>
                        <div><span>${vizitka_repository.psc}</span> <span>${vizitka_repository.obec}</span></div>
                    </div>
                    <div class="kontakty">
                        [#if email?has_content]
                        <div><i class="las la-at"></i> <span>${vizitka_repository.email}</span></div>
                        [/#if]
                        [#if telefon?has_content]
                        <div><i class="las la-phone-alt"></i> <span>${vizitka_repository.telefon}</span></div>
                        [/#if]
                        [#if web?has_content]
                        <div><i class="las la-globe"></i> <span>${vizitka_repository.web}</span></div>
                        [/#if]
                    </div>
                    [/#list]
                </div>
            </div>
        </a>

        <a href="/nova">
            <div class="vizitka vizitka--nova">
                <svg width="100" height="100">
                    <rect width="20" height="100" x="40" y="0" fill="white"/>
                    <rect width="100" height="20" x="0" y="40" fill="white"/>
                </svg>
            </div>
        </a>
    </div>
[/@c.page]
