.class public final synthetic Lk7/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk8/a$a;


# instance fields
.field public final synthetic a:Lk8/a$a;

.field public final synthetic b:Lk8/a$a;


# direct methods
.method public synthetic constructor <init>(Lk8/a$a;Lk8/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk7/b0;->a:Lk8/a$a;

    iput-object p2, p0, Lk7/b0;->b:Lk8/a$a;

    return-void
.end method


# virtual methods
.method public final a(Lk8/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk7/b0;->a:Lk8/a$a;

    iget-object v1, p0, Lk7/b0;->b:Lk8/a$a;

    invoke-static {v0, v1, p1}, Lk7/c0;->d(Lk8/a$a;Lk8/a$a;Lk8/b;)V

    return-void
.end method
