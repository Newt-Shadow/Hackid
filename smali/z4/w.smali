.class public final synthetic Lz4/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lz4/y$a;

.field public final synthetic b:I

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lz4/y$a;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz4/w;->a:Lz4/y$a;

    iput p2, p0, Lz4/w;->b:I

    iput-wide p3, p0, Lz4/w;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lz4/w;->a:Lz4/y$a;

    iget v1, p0, Lz4/w;->b:I

    iget-wide v2, p0, Lz4/w;->c:J

    invoke-static {v0, v1, v2, v3}, Lz4/y$a;->f(Lz4/y$a;IJ)V

    return-void
.end method
