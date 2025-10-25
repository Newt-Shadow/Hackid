.class final Ljp/espresso3389/content_resolver/a$b;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/espresso3389/content_resolver/a;->l(Ljava/lang/String;Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljp/espresso3389/content_resolver/a;

.field d:I


# direct methods
.method constructor <init>(Ljp/espresso3389/content_resolver/a;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljp/espresso3389/content_resolver/a$b;->c:Ljp/espresso3389/content_resolver/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lad/e;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ljp/espresso3389/content_resolver/a$b;->b:Ljava/lang/Object;

    iget p1, p0, Ljp/espresso3389/content_resolver/a$b;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ljp/espresso3389/content_resolver/a$b;->d:I

    iget-object p1, p0, Ljp/espresso3389/content_resolver/a$b;->c:Ljp/espresso3389/content_resolver/a;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Ljp/espresso3389/content_resolver/a;->d(Ljp/espresso3389/content_resolver/a;Ljava/lang/String;Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
