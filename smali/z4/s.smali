.class public final synthetic Lz4/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lz4/y$a;

.field public final synthetic b:J

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lz4/y$a;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz4/s;->a:Lz4/y$a;

    iput-wide p2, p0, Lz4/s;->b:J

    iput p4, p0, Lz4/s;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lz4/s;->a:Lz4/y$a;

    iget-wide v1, p0, Lz4/s;->b:J

    iget v3, p0, Lz4/s;->c:I

    invoke-static {v0, v1, v2, v3}, Lz4/y$a;->j(Lz4/y$a;JI)V

    return-void
.end method
