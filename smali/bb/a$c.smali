.class final Lbb/a$c;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbb/a;->g(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;ZZIIILad/e;)Ljava/lang/Object;
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

.field j:Z

.field k:I

.field l:I

.field m:I

.field n:I

.field synthetic o:Ljava/lang/Object;

.field final synthetic p:Lbb/a;

.field q:I


# direct methods
.method constructor <init>(Lbb/a;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbb/a$c;->p:Lbb/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lad/e;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iput-object p1, p0, Lbb/a$c;->o:Ljava/lang/Object;

    iget p1, p0, Lbb/a$c;->q:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lbb/a$c;->q:I

    iget-object v0, p0, Lbb/a$c;->p:Lbb/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, p0

    invoke-static/range {v0 .. v9}, Lbb/a;->a(Lbb/a;Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;ZZIIILad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
