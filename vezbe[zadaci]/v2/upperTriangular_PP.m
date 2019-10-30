function [A, b] = upperTriangular_PP(A, b)
	rows = size(A, 1);
	for it1 = 1:rows - 1
        [~, mi] = max(abs(A(it1:rows, it1)));
        mi = mi + it1 - 1;
        A([it1,mi],:) = A([mi,it1],:);
        b([it1,mi]) = b([mi,it1]);
        for it2 = it1 + 1:rows
            m = A(it2,it1)/A(it1,it1);
            A(it2,:) = A(it2,:) - A(it1,:)*m;
            b(it2) = b(it2) - b(it1)*m;
        end
	end
end