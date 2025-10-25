.class public Ld3/i0$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld3/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field private final a:[Ld3/j;

.field private final b:Ld3/w0;

.field private final c:Ld3/y0;


# direct methods
.method public varargs constructor <init>([Ld3/j;)V
    .locals 2

    .line 1
    new-instance v0, Ld3/w0;

    invoke-direct {v0}, Ld3/w0;-><init>()V

    new-instance v1, Ld3/y0;

    invoke-direct {v1}, Ld3/y0;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Ld3/i0$h;-><init>([Ld3/j;Ld3/w0;Ld3/y0;)V

    return-void
.end method

.method public constructor <init>([Ld3/j;Ld3/w0;Ld3/y0;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ld3/j;

    iput-object v0, p0, Ld3/i0$h;->a:[Ld3/j;

    const/4 v1, 0x0

    .line 4
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iput-object p2, p0, Ld3/i0$h;->b:Ld3/w0;

    .line 6
    iput-object p3, p0, Ld3/i0$h;->c:Ld3/y0;

    .line 7
    array-length v1, p1

    aput-object p2, v0, v1

    .line 8
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    aput-object p3, v0, p1

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/i0$h;->c:Ld3/y0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ld3/y0;->f(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public b(Lb3/l3;)Lb3/l3;
    .locals 2

    .line 1
    iget-object v0, p0, Ld3/i0$h;->c:Ld3/y0;

    .line 2
    .line 3
    iget v1, p1, Lb3/l3;->a:F

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ld3/y0;->h(F)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ld3/i0$h;->c:Ld3/y0;

    .line 9
    .line 10
    iget v1, p1, Lb3/l3;->b:F

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ld3/y0;->g(F)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Ld3/i0$h;->b:Ld3/w0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld3/w0;->o()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public d(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/i0$h;->b:Ld3/w0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ld3/w0;->u(Z)V

    .line 4
    .line 5
    .line 6
    return p1
.end method

.method public e()[Ld3/j;
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/i0$h;->a:[Ld3/j;

    .line 2
    .line 3
    return-object v0
.end method
