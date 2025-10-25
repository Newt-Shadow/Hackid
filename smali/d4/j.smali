.class public final Ld4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld4/t$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld4/j$a;
    }
.end annotation


# instance fields
.field private final a:Ld4/j$a;

.field private b:Lx4/j$a;

.field private c:J

.field private d:J

.field private e:J

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg3/p;)V
    .locals 1

    .line 1
    new-instance v0, Lx4/r$a;

    invoke-direct {v0, p1}, Lx4/r$a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Ld4/j;-><init>(Lx4/j$a;Lg3/p;)V

    return-void
.end method

.method public constructor <init>(Lx4/j$a;Lg3/p;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ld4/j;->b:Lx4/j$a;

    .line 4
    new-instance v0, Ld4/j$a;

    invoke-direct {v0, p2}, Ld4/j$a;-><init>(Lg3/p;)V

    iput-object v0, p0, Ld4/j;->a:Ld4/j$a;

    .line 5
    invoke-virtual {v0, p1}, Ld4/j$a;->a(Lx4/j$a;)V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide p1, p0, Ld4/j;->c:J

    .line 7
    iput-wide p1, p0, Ld4/j;->d:J

    .line 8
    iput-wide p1, p0, Ld4/j;->e:J

    const p1, -0x800001

    .line 9
    iput p1, p0, Ld4/j;->f:F

    .line 10
    iput p1, p0, Ld4/j;->g:F

    return-void
.end method
