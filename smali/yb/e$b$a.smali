.class public final Lyb/e$b$a;
.super Lzb/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/e$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lyb/e$b;


# direct methods
.method constructor <init>(Lyb/e$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyb/e$b$a;->a:Lyb/e$b;

    .line 2
    .line 3
    invoke-direct {p0}, Lzb/f;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lyb/e$b$a;->a:Lyb/e$b;

    .line 2
    .line 3
    iget-object v0, v0, Lyb/e$b;->a:Lyb/e;

    .line 4
    .line 5
    invoke-static {v0}, Lyb/e;->d(Lyb/e;)Lyb/g;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lyb/e$b$a;->a:Lyb/e$b;

    .line 10
    .line 11
    iget-object v1, v1, Lyb/e$b;->b:Lyb/c;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lyb/g;->c(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
