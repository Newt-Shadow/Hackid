.class public final Lu8/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw8/b;


# instance fields
.field private final a:Lwc/a;


# direct methods
.method public constructor <init>(Lwc/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu8/g0;->a:Lwc/a;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lwc/a;)Lu8/g0;
    .locals 1

    .line 1
    new-instance v0, Lu8/g0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lu8/g0;-><init>(Lwc/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(Lu8/n0;)Lu8/f0;
    .locals 1

    .line 1
    new-instance v0, Lu8/f0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lu8/f0;-><init>(Lu8/n0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public b()Lu8/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lu8/g0;->a:Lwc/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lwc/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lu8/n0;

    .line 8
    .line 9
    invoke-static {v0}, Lu8/g0;->c(Lu8/n0;)Lu8/f0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu8/g0;->b()Lu8/f0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
