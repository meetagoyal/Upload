module ApplicationHelper

    def pager(page, count, pages)
        n = page == pages ? page : page + 1
        p = page == 0 ? 0 : page - 1
        a = link_to ' >> Previous ', "/items?page=#{p}"
        c = link_to ' << Next ', "/items?page=#{n}"
        b = " #{page}/#{pages} "
        (a + b + c).html_safe
      end


      def pagers(page, count, pages)
        n = page == pages ? page : page + 1
        p = page == 0 ? 0 : page - 1
        a = link_to ' >> Previous ', "/prices?page=#{p}"
        c = link_to ' << Next ', "/prices?page=#{n}"
        b = " #{page}/#{pages} "
        (a + b + c).html_safe
      end

end
