.class public final synthetic Lk7/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk8/b;


# instance fields
.field public final synthetic a:Lk7/n;

.field public final synthetic b:Lk7/c;


# direct methods
.method public synthetic constructor <init>(Lk7/n;Lk7/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk7/j;->a:Lk7/n;

    iput-object p2, p0, Lk7/j;->b:Lk7/c;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lk7/j;->a:Lk7/n;

    iget-object v1, p0, Lk7/j;->b:Lk7/c;

    invoke-static {v0, v1}, Lk7/n;->i(Lk7/n;Lk7/c;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
