.class final Landroidx/privacysandbox/ads/adservices/measurement/b$a$a;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/privacysandbox/ads/adservices/measurement/b$a;->a(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/measurement/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/measurement/b$a$a;->e:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/measurement/c;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroidx/privacysandbox/ads/adservices/measurement/c;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/b$a$a;->e:Landroid/content/Context;

    .line 9
    .line 10
    invoke-direct {p1, v0}, Landroidx/privacysandbox/ads/adservices/measurement/c;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/privacysandbox/ads/adservices/measurement/b$a$a;->a(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/measurement/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
