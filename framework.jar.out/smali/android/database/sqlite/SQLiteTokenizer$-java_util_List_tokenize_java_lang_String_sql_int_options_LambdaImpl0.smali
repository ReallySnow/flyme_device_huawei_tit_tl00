.class final synthetic Landroid/database/sqlite/SQLiteTokenizer$-java_util_List_tokenize_java_lang_String_sql_int_options_LambdaImpl0;
.super Ljava/lang/Object;
.source "SQLiteTokenizer.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteTokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_List_tokenize_java_lang_String_sql_int_options_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$-lambdaCtx:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/database/sqlite/SQLiteTokenizer$-java_util_List_tokenize_java_lang_String_sql_int_options_LambdaImpl0;->val$-lambdaCtx:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Landroid/database/sqlite/SQLiteTokenizer$-java_util_List_tokenize_java_lang_String_sql_int_options_LambdaImpl0;->val$-lambdaCtx:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Landroid/database/sqlite/SQLiteTokenizer;->-android_database_sqlite_SQLiteTokenizer-mthref-0(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method
