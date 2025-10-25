.class final Lbb/a$j;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbb/a;->l(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;ZILad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;

.field g:Ljava/lang/Object;

.field h:Ljava/lang/Object;

.field i:Z

.field j:I

.field k:D

.field l:D

.field synthetic m:Ljava/lang/Object;

.field final synthetic n:Lbb/a;

.field o:I


# direct methods
.method constructor <init>(Lbb/a;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbb/a$j;->n:Lbb/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lad/e;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iput-object p1, p0, Lbb/a$j;->m:Ljava/lang/Object;

    iget p1, p0, Lbb/a$j;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lbb/a$j;->o:I

    iget-object v0, p0, Lbb/a$j;->n:Lbb/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lbb/a;->d(Lbb/a;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;ZILad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
