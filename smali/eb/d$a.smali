.class final Leb/d$a;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leb/d;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZIIIILeb/e;Leb/i;ZLeb/j;Lid/l;ZLeb/a;ZLjava/net/Proxy;Lcom/posthog/surveys/PostHogSurveysConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final e:Leb/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Leb/d$a;

    invoke-direct {v0}, Leb/d$a;-><init>()V

    sput-object v0, Leb/d$a;->e:Leb/d$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/UUID;)Ljava/util/UUID;
    .locals 1

    .line 1
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/UUID;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Leb/d$a;->a(Ljava/util/UUID;)Ljava/util/UUID;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
