<?php
// Use this file instead of Check Role.php.

// Day 4 - Authentication and users.
// Create the role middleware

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class RoleMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  Closure(Request): (Response)  $next
     */
    public function handle(Request $request, Closure $next, string $role): Response
    {
        if (!auth()->check()) {
            return redirect('/login');
        }

        if (auth()->user()->role !== $role) {
            abrt(403, "Acesso não autorizado.");
        }
        return $next($request);
    }
}
