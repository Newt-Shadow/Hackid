.class final Leb/d$c;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leb/d;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZIIIILeb/e;Leb/i;ZLeb/j;Lid/l;ZLeb/a;ZLjava/net/Proxy;Lcom/posthog/surveys/PostHogSurveysConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Leb/d;


# direct methods
.method constructor <init>(Leb/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leb/d$c;->e:Leb/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Llb/b0;
    .locals 2

    .line 1
    new-instance v0, Llb/b0;

    .line 2
    .line 3
    iget-object v1, p0, Leb/d$c;->e:Leb/d;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Llb/b0;-><init>(Leb/d;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Leb/d$c;->b()Llb/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
