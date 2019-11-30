function x = gauss_PP(A, b)
    [rows, cols] = size(A);
    if rows ~= cols
        error('Matrix A must be square!')
    end

	[A, b] = upperTriangular_PP(A, b);
	x = solveUpperTriangular(A, b);
end

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

function x = solveUpperTriangular(A, b)
	rows = size(A, 1);
	x = zeros(rows, 1);
	for it1 = rows:-1:1
        x(it1) = (b(it1) - A(it1,it1 + 1:end)*x(it1 + 1:end))/A(it1,it1);
	end
end