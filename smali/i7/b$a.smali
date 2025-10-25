.class Li7/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li7/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li7/b;->a(Ljava/lang/String;Li7/a$b;)Li7/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Li7/b;


# direct methods
.method constructor <init>(Li7/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Li7/b$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Li7/b$a;->b:Li7/b;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
