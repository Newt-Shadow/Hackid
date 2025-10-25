.class public final Lz2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lz2/c;
    .locals 1

    .line 1
    invoke-static {}, Lz2/c$a;->a()Lz2/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static b()Lz2/a;
    .locals 1

    .line 1
    invoke-static {}, Lz2/b;->a()Lz2/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lr2/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lz2/a;

    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public c()Lz2/a;
    .locals 1

    .line 1
    invoke-static {}, Lz2/c;->b()Lz2/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lz2/c;->c()Lz2/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
